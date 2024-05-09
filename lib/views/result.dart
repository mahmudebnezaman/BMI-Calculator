import 'package:bmi_calculator/consts/strings.dart';
import 'package:bmi_calculator/views/home_screen.dart';
import 'package:bmi_calculator/widgets/customElevatedButton.dart';
import 'package:bmi_calculator/widgets/customHeightSpacer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Result extends StatefulWidget {
  const Result({super.key, required this.bmiResult});

  final double bmiResult;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(
              title: bmiCalculator,
            ),
          ),
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  yourResult,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: _getRadialGauge(
                    context: context,
                    value: widget.bmiResult,
                    title: bmiText(widget.bmiResult)[0],
                    textColor: bmiText(widget.bmiResult)[1],
                  ),
                ),
                CustomHeightSpacer(context: context),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Row(
                    children: [
                      Text(
                        bmiValues[index]['title'].toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      Text(
                        bmiValues[index]['value'].toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: bmiValues.length,
                ),
                CustomHeightSpacer(context: context),
                Center(
                  child: CustomElevatedButton(
                    context: context,
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(
                          title: bmiCalculator,
                        ),
                      ),
                    ),
                    title: 'Re-Calculate',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getRadialGauge({
  required context,
  required value,
  required title,
  required textColor,
}) {
  return SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3000,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 10,
        maximum: 45,
        interval: 5,
        ranges: <GaugeRange>[
          GaugeRange(
            startValue: 10.0,
            endValue: 14.9,
            color: colorVerySeverelyUnderweight,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 15.0,
            endValue: 15.9,
            color: colorSeverelyUnderweight,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 16.0,
            endValue: 18.4,
            color: colorUnderweight,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 18.5,
            endValue: 24.9,
            color: colorNormal,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 25.0,
            endValue: 29.9,
            color: colorOverWeight,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
            startValue: 30.0,
            endValue: 34.9,
            color: colorObeseClassI,
            startWidth: 10,
            endWidth: 10,
          ),
          GaugeRange(
              startValue: 35.0,
              endValue: 39.9,
              color: colorObeseClassII,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 40.0,
              endValue: 45.9,
              color: colorObeseClassIII,
              startWidth: 10,
              endWidth: 10),
        ],
        pointers: <GaugePointer>[
          NeedlePointer(value: value),
        ],
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Column(
              children: [
                Text(
                  value.toStringAsFixed(1),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight:
                        Theme.of(context).textTheme.titleMedium!.fontWeight,
                    fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                    color: textColor,
                  ),
                ),
              ],
            ),
            angle: 90,
            positionFactor: 1.7,
          ),
        ],
      ),
    ],
  );
}

List bmiText(bmiResult) {
  if (bmiResult <= 14.9) {
    return [bmiValues[0]['title'], bmiValues[0]['color']];
  } else if (bmiResult >= 14.0 && bmiResult <= 15.9) {
    return [bmiValues[1]['title'], bmiValues[1]['color']];
  } else if (bmiResult >= 16.0 && bmiResult <= 18.4) {
    return [bmiValues[2]['title'], bmiValues[2]['color']];
  } else if (bmiResult >= 18.5 && bmiResult <= 24.9) {
    return [bmiValues[3]['title'], bmiValues[3]['color']];
  } else if (bmiResult >= 25.0 && bmiResult <= 29.9) {
    return [bmiValues[4]['title'], bmiValues[4]['color']];
  } else if (bmiResult >= 30.0 && bmiResult <= 34.9) {
    return [bmiValues[5]['title'], bmiValues[5]['color']];
  } else if (bmiResult >= 35.0 && bmiResult <= 35.9) {
    return [bmiValues[6]['title'], bmiValues[6]['color']];
  } else {
    return [bmiValues[7]['title'], bmiValues[7]['color']];
  }
}
