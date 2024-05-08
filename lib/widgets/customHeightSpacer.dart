
import 'package:flutter/material.dart';

Widget  CustomHeightSpacer({required context}) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.01,
  );
}
