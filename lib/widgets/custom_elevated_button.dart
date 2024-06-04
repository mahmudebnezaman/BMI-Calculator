import 'package:flutter/material.dart';

Widget customElevatedButton({
  required context,
  required height,
  required width,
  required onTap,
  required title,
  isSelected = true,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: Theme.of(context).textTheme.titleMedium,
        backgroundColor: isSelected ? Colors.deepPurple : const Color(0xFF25232B)
      ),
      onPressed: onTap,
      child: Text(
        title,
      ),
    ),
  );
}
