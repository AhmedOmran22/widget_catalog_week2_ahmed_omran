import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatefulWidget {
  const AbsorbPointerExample({super.key});

  @override
  State<AbsorbPointerExample> createState() => _AbsorbPointerExampleState();
}

class _AbsorbPointerExampleState extends State<AbsorbPointerExample> {
  bool isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AbsorbPointer Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbsorbPointer(
              absorbing: isButtonDisabled,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: const Text('Press Me'),
              ),
            ),
            const SizedBox(height: 20),
            SwitchListTile(
              title: const Text('Disable Button'),
              value: isButtonDisabled,
              onChanged: (value) {
                setState(() {
                  isButtonDisabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
