import 'package:flutter/material.dart';

class DragTargetExample extends StatefulWidget {
  const DragTargetExample({super.key});

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  Color targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DragTarget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withValues(alpha: 0.7),
                child: const Center(
                  child: Text(
                    'Dragging',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: const Center(child: Text('Empty')),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text('Drag Me', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),

            DragTarget<Color>(
              onWillAcceptWithDetails: (details) {
                return true;
              },
              onAcceptWithDetails: (details) {
                setState(() {
                  targetColor = details.data;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200,
                  height: 200,
                  color: candidateData.isEmpty
                      ? targetColor
                      : Colors.greenAccent,
                  child: Center(
                    child: Text(
                      candidateData.isEmpty ? 'Drop Here' : 'Release!',
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
