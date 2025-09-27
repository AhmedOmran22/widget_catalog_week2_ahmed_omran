import 'package:flutter/material.dart';

class MenuExample extends StatelessWidget {
  const MenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Example")),
      body: Center(
        child: PopupMenuButton<String>(
          onSelected: (value) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("You selected: $value")));
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ],
          child: const ElevatedButton(
            onPressed: null,
            child: Text("Open Menu"),
          ),
        ),
      ),
    );
  }
}
