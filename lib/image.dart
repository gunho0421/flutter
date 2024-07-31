import  'package:flutter/material.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이미지 앱바입니다."),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.network('https://cdn.pixabay.com/photo/2024/06/23/06/27/lake-8847415_1280.jpg'),
      ),
    );
  }
}
