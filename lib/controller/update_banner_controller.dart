import 'dart:convert';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class UpdateBannerController extends GetxController {
  Rx<XFile?> cover_img = Rx<XFile?>(null);
  String title = '';
  String subtitle = '';
  String link = '';

  Future<void> pickImageAndUpdate(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      final File jpegImage = await convertToJPEG(XFile(pickedFile.path));
      cover_img.value = XFile(pickedFile.path);
      update();

      // calling the function to update the banner image on the server
      await updateBannerOnServer(
        jpegImage.path,
        title,
        subtitle,
        link,
      );

    }
  }

  Future<File> convertToJPEG(XFile xFile) async {

    final File imageFile = File(xFile.path);


    final bytes = await imageFile.readAsBytes();


    final File jpegImage = File('${imageFile.path}.jpg');
    await jpegImage.writeAsBytes(bytes);

    return jpegImage;
  }

  Future<void> updateBannerOnServer(
      String imagePath, String title, String subtitle, String link) async {
    final url = 'https://backend-gilt-two.vercel.app/api/v1/banner/update/1';

    try {
      final response = await http.put(
        Uri.parse(url),
        body: json.encode({
          'title': title,
          'subtitle': subtitle,
          'cover_img': imagePath,
          'link': link,
        }),
        headers: {'Content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Banner updated successfully
        print('Banner updated successfully');
      } else {
        // If failed to update banner
        print(
            'Failed to update banner. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error updating banner: $e');
    }
  }
}
