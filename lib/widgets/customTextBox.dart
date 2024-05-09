import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget CustomTextBox({
  required context,
  required title,
  required controller,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(32),
              // ),
              hintText: '00',
            ),
          ),
        ),
      ),
    ],
  );
}
