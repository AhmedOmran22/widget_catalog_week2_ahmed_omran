import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Value: ${sliderValue.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: sliderValue.toStringAsFixed(0),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
