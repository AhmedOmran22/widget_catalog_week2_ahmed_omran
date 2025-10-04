import 'package:flutter/material.dart';

class CarouseViewlExample extends StatelessWidget {
  const CarouseViewlExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CarouselView Example')),
      body: Center(
        child: SizedBox(
          height: 200,
          child: CarouselView(
            scrollDirection: Axis.horizontal,
            itemExtent: 200,
            children: List.generate(
              5,
              (index) => Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.primaries[index % Colors.primaries.length],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
