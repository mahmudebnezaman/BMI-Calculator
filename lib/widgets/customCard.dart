import 'package:flutter/material.dart';

Widget CustomCard({required context, required width, required widget}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    child: SizedBox(
      height: MediaQuery.sizeOf(context).width * 0.4,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget,
      ),
    ),
  );
}