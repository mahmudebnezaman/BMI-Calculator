import 'package:flutter/material.dart';

Widget BigCardTitle({
  required context,
  required img,
  required title,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        img,
        height: MediaQuery.sizeOf(context).height * 0.06,
        fit: BoxFit.fitHeight,
        color: Colors.white,
      ),
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.01,
      ),
      Text(title),
    ],
  );
}