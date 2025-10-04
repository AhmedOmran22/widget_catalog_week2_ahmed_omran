import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة بيانات ديناميكية
    final List<Map<String, String>> data = [
      {'id': '1', 'name': 'Alice', 'age': '25'},
      {'id': '2', 'name': 'Bob', 'age': '30'},
      {'id': '3', 'name': 'Charlie', 'age': '28'},
      {'id': '4', 'name': 'David', 'age': '35'},
      {'id': '5', 'name': 'Eva', 'age': '22'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Table Example')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Table(
              columnWidths: const {
                0: FixedColumnWidth(80),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(1),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(
                color: Colors.blue,
                width: 2,
                style: BorderStyle.solid,
              ),
              children: [
                // Header Row
                TableRow(
                  decoration: BoxDecoration(color: Colors.blue[100]),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ID', textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Name', textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Age', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                // Rows generated dynamically
                ...data.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, String> row = entry.value;
                  return TableRow(
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Colors.grey[200]
                          : Colors.grey[300],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(row['id']!, textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(row['name']!, textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(row['age']!, textAlign: TextAlign.center),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Dynamic Table with alternating row colors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
