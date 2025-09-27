import 'package:flutter/material.dart';

class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Apple',
      'Banana',
      'Cherry',
      'Date',
      'Grapes',
      'Mango',
      'Orange',
      'Pineapple',
      'Strawberry',
      'Watermelon',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Autocomplete Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return options.where((option) => option
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase()));
              },
              onSelected: (String selection) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected: $selection')),
                );
              },
              fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type a fruit',
                  ),
                  onEditingComplete: onEditingComplete,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
