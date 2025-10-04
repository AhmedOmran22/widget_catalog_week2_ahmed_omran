import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InteractiveViewer Example')),
      body: Center(
        child: InteractiveViewer(
          panEnabled: true,
          scaleEnabled: true,
          minScale: 0.8,
          maxScale: 4.0,
          boundaryMargin: const EdgeInsets.all(80),
          child: Image.network(
            'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg',
            width: 300,
          ),
        ),
      ),
    );
  }
}
