import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wheel_slider/wheel_slider.dart';

class CustomWheelButton extends StatefulWidget {
  const CustomWheelButton({
    super.key,
    required this.title,
    required this.currentValue,
    required this.totalCount,
    required this.initValue,
    required this.callback,
  });

  final String title;
  final int currentValue;
  final int totalCount;
  final int initValue;
  final ValueSetter<int> callback;

  @override
  State<CustomWheelButton> createState() => _CustomWheelButtonState();
}

class _CustomWheelButtonState extends State<CustomWheelButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Gap(5),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                WheelSlider(
                  pointerColor: Colors.deepPurple,
                  lineColor: Theme.of(context).colorScheme.onSurface,
                  itemSize: 10,
                  totalCount: widget.totalCount.toInt(),
                  initValue: widget.initValue,
                  onValueChanged: (val) {
                    widget.callback(val);
                  },
                  // hapticFeedbackType: HapticFeedbackType.vibrate,
                ),
                const Gap(5),
                Text('${widget.currentValue}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
