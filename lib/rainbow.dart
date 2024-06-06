import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 100,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
