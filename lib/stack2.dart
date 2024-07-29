import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("안녕하세요"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white12,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 940, left: 50),
                color: Colors.yellow,
              ),
              Container(
                width: 400,
                height: 100,
                margin: const EdgeInsets.only(top: 500, left: 400),
                color: Colors.blue,
              ),
              Container(
                width: 1200,
                height: 100,
                margin: const EdgeInsets.only(top: 1130, left: 0),
                color: Colors.brown,
              ),
            ],
          ),
        )
    );
  }
}