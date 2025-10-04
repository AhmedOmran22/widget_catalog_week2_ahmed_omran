import 'package:flutter/material.dart';

class CustomSingleChildLayoutExample extends StatelessWidget {
  const CustomSingleChildLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomSingleChildLayout Example')),
      body: Center(
        child: Container(
          color: Colors.amber.shade100,
          height: 300,
          width: 300,
          child: CustomSingleChildLayout(
            delegate: MySingleChildDelegate(),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: const Center(
                child: Text('Child', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MySingleChildDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(300, 300);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.loose(const Size(150, 150));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width - childSize.width, size.height - childSize.height);
  }

  @override
  bool shouldRelayout(covariant MySingleChildDelegate oldDelegate) {
    return false;
  }
}
