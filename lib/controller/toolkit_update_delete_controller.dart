import 'package:get/get.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class ToolKitUpdateDeleteController extends GetxController {
  Rx<File?> coverImage = Rx<File?>(null);
  Rx<File?> musicFile = Rx<File?>(null);
  String title = '';
  String steps = '';
  String music = '';

  Future<void> pickCoverImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile == null) return;

    coverImage.value = File(pickedFile.path);
  }

  Future<void> pickMusic() async {
    try {
      final pickedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
      );

      if (pickedFile == null) {
        print('No file selected.');
        return;
      }

      final files = pickedFile.files;
      if (files.isEmpty) {
        print('No files found in the selection.');
        return;
      }


      final filePath = files.first.path;
      if (filePath == null) {
        print('File path is null.');
        return;
      }

      // Create a File object from the file path
      musicFile.value = File(filePath);

      print('Music file selected: $filePath');
    } catch (e) {
      print('Error picking music file: $e');
    }
  }

  Future<void> updateTechnique() async {
    final url = 'https://backend-gilt-two.vercel.app/api/v1/technique/update/1';

    try {
      var request = http.MultipartRequest('PUT', Uri.parse(url));
      request.fields['title'] = title;
      request.fields['steps'] = steps;
      request.fields['music'] = music;

      if (coverImage.value != null) {
        request.files.add(await http.MultipartFile.fromPath(
          'cover_img',
          coverImage.value!.path,
        ));
      }

      if (musicFile.value != null) {
        request.files.add(await http.MultipartFile.fromPath(
          'music_file',
          musicFile.value!.path,
        ));
      }

      var response = await request.send();

      if (response.statusCode == 200) {
        // Technique updated successfully
        print('Technique updated successfully');
      } else {
        // If failed to update technique
        print(
            'Failed to update technique. Status code: ${response.statusCode}');
        print('Response body: ${await response.stream.bytesToString()}');
       //handle error based on the error
      }
    } catch (e) {
      print('Error updating technique: $e');

    }
  }
}
