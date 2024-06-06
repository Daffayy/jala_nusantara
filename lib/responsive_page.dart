import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth < 600
              ? ListView(
                  children: _generateContainers(),
                )
              : constraints.maxWidth < 900
                  ? GridView.count(
                      crossAxisCount: 2,
                      children: _generateContainers(),
                    )
                  : GridView.count(
                      crossAxisCount: 6, children: _generateContainers());
        },
      ),
    );
  }
}

List<Widget> _generateContainers() {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.blueGrey,
      height: 200,
    );
  });
}
