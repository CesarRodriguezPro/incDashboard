import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  final Widget child;
  const SquareCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 200,
        height: 100,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
