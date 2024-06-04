import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double width;
  final Widget child;

  const CustomCard({
    super.key,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).width * 0.4,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}