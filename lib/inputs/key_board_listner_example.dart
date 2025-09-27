import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardListenerExample extends StatefulWidget {
  const KeyboardListenerExample({super.key});

  @override
  State<KeyboardListenerExample> createState() =>
      _KeyboardListenerExampleState();
}

class _KeyboardListenerExampleState extends State<KeyboardListenerExample> {
  String lastKey = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KeyboardListener Example")),
      body: Center(
        child: KeyboardListener(
          focusNode: FocusNode()..requestFocus(),
          autofocus: true,
          onKeyEvent: (KeyEvent event) {
            if (event is KeyDownEvent) {
              setState(() {
                lastKey =
                    event.logicalKey.debugName ?? event.logicalKey.keyLabel;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Press any key on your keyboard",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  "Last key pressed: $lastKey",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
