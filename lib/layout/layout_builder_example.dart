import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredBoxWidget(color: Colors.red, text: 'Box 1'),
                ColoredBoxWidget(color: Colors.green, text: 'Box 2'),
                ColoredBoxWidget(color: Colors.blue, text: 'Box 3'),
              ],
            );
          } else {
            return const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredBoxWidget(color: Colors.red, text: 'Box 1'),
                ColoredBoxWidget(color: Colors.green, text: 'Box 2'),
                ColoredBoxWidget(color: Colors.blue, text: 'Box 3'),
              ],
            );
          }
        },
      ),
    );
  }
}

class ColoredBoxWidget extends StatelessWidget {
  final Color color;
  final String text;

  const ColoredBoxWidget({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(8),
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
