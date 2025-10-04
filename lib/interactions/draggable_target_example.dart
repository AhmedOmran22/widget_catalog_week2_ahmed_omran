import 'package:flutter/material.dart';

class DraggableSheetExample extends StatelessWidget {
  const DraggableSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DraggableScrollableSheet Example')),
      body: Stack(
        children: [
          Container(
            color: Colors.blue.shade100,
            child: const Center(
              child: Text(
                'Map or Main Content Here',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.1,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.place),
                      title: Text('Place #${index + 1}'),
                      subtitle: const Text('Some description here...'),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
