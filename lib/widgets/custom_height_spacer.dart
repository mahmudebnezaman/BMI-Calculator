
import 'package:flutter/material.dart';

Widget  customHeightSpacer({required context}) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.01,
  );
}
