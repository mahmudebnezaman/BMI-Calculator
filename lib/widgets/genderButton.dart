import 'package:bmi_calculator/consts/strings.dart';
import 'package:flutter/material.dart';

Widget GenderButton({required context, required buttonName}) {
  return InkWell(
    borderRadius: BorderRadius.circular(
      12,
    ),
    onTap: () {},
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          buttonName == male ? Icons.male_rounded : Icons.female_rounded,
          size: 40,
        ),
        Text(
          buttonName,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}