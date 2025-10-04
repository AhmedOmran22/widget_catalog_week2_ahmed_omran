import 'package:flutter/material.dart';

class ListBodyExample extends StatelessWidget {
  const ListBodyExample({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (index) => 'Item ${index + 1}');
    final colors = List.generate(
      10,
      (index) => Colors.primaries[index % Colors.primaries.length],
    );

    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListBody(
              children: List.generate(items.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.all(16),
                  color: colors[index],
                  child: Text(
                    items[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
