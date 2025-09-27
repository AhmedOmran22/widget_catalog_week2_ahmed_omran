import 'package:flutter/material.dart';

class ExcludeSemanticsExample extends StatelessWidget {
  const ExcludeSemanticsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ExcludeSemantics Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This text is accessible",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ExcludeSemantics(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("This button is hidden from accessibility"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
