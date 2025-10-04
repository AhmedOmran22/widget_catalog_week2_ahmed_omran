import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  const BaselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Baseline Example")),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: Colors.amber, height: 100, width: 50),
            const Baseline(
              baseline: 80,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
            ),
            const Baseline(
              baseline: 80,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'World!',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
