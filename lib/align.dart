import 'package:flutter/material.dart';

class align extends StatefulWidget {
  const align({super.key});

  @override
  State<align> createState() => _alignState();
}

class _alignState extends State<align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("align 실습"),
        ),
        body: Container(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black12,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    color: Colors.brown,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 40, bottom: 150),
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    width: 200,
                    height: 70,
                    color: Colors.lightBlue[200],
                  ),
                )
              ],
            )

        )
    );
  }
}