import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomStorage extends StatefulWidget {
  const CustomStorage({super.key});

  @override
  State<CustomStorage> createState() => _CustomStorageState();
}

class _CustomStorageState extends State<CustomStorage> {
  final ImagePicker _imagePicker = ImagePicker();
  File? imageFile;

  getImage() async {
    final selectedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      imageFile = File(selectedImage.path);
      setState(() {});
    }
  }

  uploadFile() async {
    FirebaseStorage.instance.ref().child('Image').putFile(imageFile!);
    print('File Uploaded');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Firebase Storagee")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageFile != null
                ? Center(child: Image.file(imageFile!))
                : Center(
                    child: ElevatedButton(
                        onPressed: () {
                          getImage();
                        },
                        child: const Text('Pick Image')),
                  ),
            ElevatedButton(
                onPressed: () {
                  uploadFile();
                },
                child: const Text('Upload File'))
          ],
        ),
      ),
    );
  }
}
