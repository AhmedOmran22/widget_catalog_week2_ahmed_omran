import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  List<String> items = [
    'Apples',
    'Bananas',
    'Oranges',
    'Mangoes',
    'Pineapples',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('$item deleted')));
            },
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(item),
              ),
            ),
          );
        },
      ),
    );
  }
}
