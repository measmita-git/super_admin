import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class UpdateSOSController extends GetxController {
  Rx<File?> panCardImage = Rx<File?>(null);
  TextEditingController titleController = TextEditingController();
  TextEditingController emergencyContactController = TextEditingController();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile == null) return;

    panCardImage.value = File(pickedFile.path);
  }

  Future<void> updateSOS(int id) async {
    final serverUrl = 'https://backend-gilt-two.vercel.app';
    final url = Uri.parse('$serverUrl/api/v1/sos/update/$id'); 

    final headers = <String, String>{'Content-Type': 'application/json'};
    final body = jsonEncode({
      'title': titleController.text,
      'video': panCardImage.value!.path,
      'contact': emergencyContactController.text,
    });

    try {
      final response = await http.put(url, headers: headers, body: body);
      final responseData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // SOS updated successfully
        print('SOS updated successfully');
        print('Response data: $responseData');
      } else {
        // Failed to update SOS
        print('Failed to update SOS. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error
      print('Error updating SOS: $error');
    }
  }
}