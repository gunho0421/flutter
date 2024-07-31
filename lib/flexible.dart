import  'package:flutter/material.dart';

class flexible extends StatefulWidget {
  const flexible({super.key});

  @override
  State<flexible> createState() => _flexibleState();
}

class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flexible"),
      ),
        body: Container(
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.lightBlue,
                  )
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                  )
              ),
            ],
          ),
        )
    );
  }
}
