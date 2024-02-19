import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UpdateDeleteBlogController extends GetxController {
  var coverImg = Rxn<File>();
  var selectedContainerIndex = 0.obs;
  var quillController = QuillController.basic().obs;

  // UpdateDeleteBlogController
  void pickImage(ImageSource source, int containerIndex) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile == null) return;
    switch (containerIndex) {
      case 1:
        coverImg.value = File(pickedFile.path);
        break;
      default:
    }
  }

  Future<void> updateBlog(int blogId) async {
    try {
      final serverUrl = 'https://backend-gilt-two.vercel.app';
      final url = '$serverUrl/api/v1/blog/update/$blogId';
      final response = await http.put(
        Uri.parse(url),
        body: {
          'title': 'Updated Title',
          'description': 'Updated Description',
        },
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print('Blog Updated: $responseData');
      } else {
        print('Failed to update blog: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error updating blog: $e');
    }
  }


  Future<void> deleteBlog(int blogId) async {
    try {
      final url = 'https://backend-gilt-two.vercel.app/api/v1/blog/delete/1';
      final response = await http.delete(Uri.parse(url));

      if (response.statusCode == 200) {
        // Blog deleted successfully
        print('Blog Deleted');
      } else {
        // Handle error
        print('Failed to delete blog: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error deleting blog: $e');
    }
  }
}
