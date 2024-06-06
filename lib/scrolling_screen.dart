import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      separatorBuilder: (context, index) => Divider(color: Colors.white),
      itemCount: numberList.length ?? 0,
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              "${numberList[index]}",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        );
      },
    ));
  }
}
