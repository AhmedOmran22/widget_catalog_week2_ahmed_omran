import 'package:flutter/material.dart';

class FlowExample extends StatelessWidget {
  const FlowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Flow(
          delegate: MyFlowDelegate(margin: const EdgeInsets.all(10)),
          children: List.generate(
            6,
            (index) => Container(
              width: 80,
              height: 80,
              color: Colors.primaries[index % Colors.primaries.length],
            ),
          ),
        ),
      ),
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  final EdgeInsets margin;

  MyFlowDelegate({required this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = margin.left;
    double y = margin.top;

    for (int i = 0; i < context.childCount; i++) {
      final childWidth = context.getChildSize(i)!.width;
      final childHeight = context.getChildSize(i)!.height;

      // إذا تخطت الشاشة، ننتقل للسطر الجديد
      if (x + childWidth + margin.right > context.size.width) {
        x = margin.left;
        y += childHeight + margin.top + margin.bottom;
      }

      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));

      x += childWidth + margin.left + margin.right;
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
