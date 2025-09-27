import 'package:flutter/material.dart';

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chip Example")),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: [
            const Chip(label: Text("Simple Chip")),
            const Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("A"),
              ),
              label: Text("Avatar Chip"),
            ),
            Chip(
              label: const Text("Deletable Chip"),
              deleteIcon: const Icon(Icons.close),
              onDeleted: () {},
            ),
          ],
        ),
      ),
    );
  }
}
