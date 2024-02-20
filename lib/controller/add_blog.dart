import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';


class AddBlogController extends GetxController {
  final Rx<File?> cover_img = Rx<File?>(null);


  File? get aadhaarFrontImage => cover_img.value;

  final RxInt? _selectedContainerIndex = RxInt(0);

  int? get selectedContainerIndex => _selectedContainerIndex!.value;

  late QuillController _controller;

  QuillController get controller => _controller;

  late FocusNode _focusNode;

  FocusNode get focusNode => _focusNode;

  @override
  void onInit() {
    _controller = QuillController.basic();
    _focusNode = FocusNode();
    super.onInit();
  }

  Future<void> pickImage(ImageSource source, int containerIndex) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile == null) return;

    switch (containerIndex) {
      case 1:
        XFile? imageFile = pickedFile;
        if (imageFile != null) {
          File? compressedImage = await compressAndGetFile(imageFile);
          if (compressedImage != null) {
            cover_img.value = compressedImage;
          } else {
            // Handle error if compression fails
            print('Image compression failed');
          }
        }
        break;
    }
  }



  Future<File?> compressAndGetFile(XFile file) async {
    final filePath = file.path;
    final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
    final splitted = filePath.substring(0, (lastIndex));
    final outPath = "${splitted}_compressed.jpg";
    final result = await FlutterImageCompress.compressAndGetFile(
      filePath,
      outPath,
      minWidth: 800,
      minHeight: 600,
      quality: 70,
    );
    if (result != null) {
      return File(result.path);
    } else {
      return null;
    }
  }

  Future<void> createBlog(String title, String description) async {
    final url = 'https://backend-gilt-two.vercel.app/api/v1/blog/create';
    final headers = {'Content-Type': 'application/json'};

    File? coverImage = cover_img.value;

    if (coverImage == null) {
      print('Cover image is null');
      return;
    }

    List<int> imageBytes = await coverImage.readAsBytes();
    String coverImageBase64 = base64Encode(imageBytes);

    final body = jsonEncode({
      'title': title,
      'cover_img': coverImageBase64,
      'description': description,
    });

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print(responseData);
        // Handle success response
      } else {
        print('Error: ${response.statusCode}');
        print('Response Body: ${response.body}');
        // Handle error response
      }
    } catch (e) {
      print('Exception: $e');
      if (e is http.Response) {
        print('Response Body: ${e.body}');
      }
    }
  }

}