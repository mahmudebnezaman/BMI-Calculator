import 'package:bmi_calculator/consts/strings.dart';
import 'package:flutter/material.dart';

Widget GenderButton({required context, required buttonName, required isSelected, required onTap}) {
  return InkWell(
    borderRadius: BorderRadius.circular(
      12,
    ),
    onTap: onTap,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          buttonName == male ? Icons.male_rounded : Icons.female_rounded,
          color: isSelected ? Colors.deepPurple : Colors.white,
          size: 40,
        ),
        Text(
          buttonName,
          style: TextStyle(
            color: isSelected ? Colors.deepPurple : Colors.white,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
            fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight
          ),
        ),
      ],
    ),
  );
}