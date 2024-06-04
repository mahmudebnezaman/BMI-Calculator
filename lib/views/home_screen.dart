import 'package:flutter/material.dart';

import 'package:bmi_calculator_for_adults/consts/strings.dart';

import 'package:bmi_calculator_for_adults/views/result.dart';

import 'package:bmi_calculator_for_adults/widgets/big_card.dart';
import 'package:bmi_calculator_for_adults/widgets/custom_card.dart';
import 'package:bmi_calculator_for_adults/widgets/custom_elevated_button.dart';
import 'package:bmi_calculator_for_adults/widgets/custom_height_spacer.dart';
import 'package:bmi_calculator_for_adults/widgets/custom_wheel_button.dart';
import 'package:bmi_calculator_for_adults/widgets/gender_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isMetric = true;
  bool isImperial = false;

  bool isMale = true;
  bool isFemale = false;

  int currentAgeValue = 0;
  int maxAge = 200;
  int initAge = 0;

  int currentFtValue = 0;
  int maxFt = 10;
  int initFt = 0;

  int currentInValue = 0;
  int maxIn = 11;
  int initIn = 0;

  int currentLbValue = 0;
  int maxLb = 1400;
  int initLb = 0;

  int currentCmValue = 0;
  int maxCm = 275;
  int initCm = 0;

  int currentKgValue = 0;
  int maxKg = 650;
  int initKg = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.scale,
                          size: 15,
                        ),
                      ],
                    ),
                    Text(
                      bodyMassIndex,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                customHeightSpacer(
                  context: context,
                ),
                Row(
                  children: [
                    CustomCard(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            gender,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                genderButton(
                                  context: context,
                                  buttonName: male,
                                  isSelected: isMale,
                                  onTap: toggleMaleMode,
                                ),
                                const SizedBox(
                                  height: 40,
                                  child: VerticalDivider(
                                    thickness: 3,
                                  ),
                                ),
                                genderButton(
                                  context: context,
                                  buttonName: female,
                                  isSelected: isFemale,
                                  onTap: toggleFemaleMode,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    CustomCard(
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      child: CustomWheelButton(
                        title: age,
                        currentValue: currentAgeValue,
                        totalCount: maxAge,
                        initValue: initAge,
                        callback: changeAgeValue,
                      ),
                    ),
                  ],
                ),
                customHeightSpacer(
                  context: context,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customElevatedButton(
                      context: context,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      onTap: toggleImperialMode,
                      title: 'Imperial',
                      isSelected: isImperial,
                    ),
                    customElevatedButton(
                      context: context,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      onTap: toggleMetricMode,
                      title: 'Metric',
                      isSelected: isMetric,
                    ),
                  ],
                ),
                customHeightSpacer(
                  context: context,
                ),
                CustomCard(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bigCardTitle(
                        context: context,
                        img: imgRuler,
                        title: height,
                      ),
                      isMetric
                          ? CustomWheelButton(
                              title: cm,
                              currentValue: currentCmValue,
                              totalCount: maxCm,
                              initValue: initCm,
                              callback: changeCmValue,
                            )
                          : Row(
                              children: [
                                CustomWheelButton(
                                  title: ft,
                                  currentValue: currentFtValue,
                                  totalCount: maxFt,
                                  initValue: initFt,
                                  callback: changeFtValue,
                                ),
                                const SizedBox(
                                  height: 80,
                                  child: VerticalDivider(
                                      // thickness: 3,
                                      ),
                                ),
                                CustomWheelButton(
                                  title: inch,
                                  currentValue: currentInValue,
                                  totalCount: maxIn,
                                  initValue: initIn,
                                  callback: changeInValue,
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                customHeightSpacer(
                  context: context,
                ),
                CustomCard(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bigCardTitle(
                        context: context,
                        img: imgWeightScale,
                        title: weight,
                      ),
                      isMetric
                          ? CustomWheelButton(
                              title: kg,
                              currentValue: currentKgValue,
                              totalCount: maxKg,
                              initValue: initKg,
                              callback: changeKgValue,
                            )
                          : CustomWheelButton(
                              title: lb,
                              currentValue: currentLbValue,
                              totalCount: maxLb,
                              initValue: initLb,
                              callback: changeLbValue,
                            ),
                    ],
                  ),
                ),
                customHeightSpacer(
                  context: context,
                ),
                customElevatedButton(
                  context: context,
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  onTap: () {
                    validation();
                  },
                  title: 'Calculate',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changeAgeValue(val) {
    currentAgeValue = val;
    setState(() {});
  }

  void changeFtValue(val) {
    currentFtValue = val;
    setState(() {});
  }

  void changeInValue(val) {
    currentInValue = val;
    setState(() {});
  }

  void changeLbValue(val) {
    currentLbValue = val;
    setState(() {});
  }

  void changeCmValue(val) {
    currentCmValue = val;
    setState(() {});
  }

  void changeKgValue(val) {
    currentKgValue = val;
    setState(() {});
  }

  void validation() {
    var snackBar = SnackBar(
      content: Text(
        'Values should be greater than 0',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      backgroundColor: const Color(0xFF25232B),
      duration: const Duration(seconds: 2),
    );
    if (isMetric) {
      if (currentAgeValue <= 0 || currentCmValue <= 0 || currentKgValue <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          snackBar,
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Result(
              bmiResult: bmiCalculation(),
            ),
          ),
        );
      }
    } else {
      if (currentAgeValue <= 0 ||
          currentFtValue <= 0 ||
          currentInValue <= 0 ||
          currentLbValue <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          snackBar,
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Result(
              bmiResult: bmiCalculation(),
            ),
          ),
        );
      }
    }
  }

  double bmiCalculation() {
    if (currentFtValue != 0) {
      currentFtValue *= 12;
    }

    double bmiResult;

    if (isMetric) {

      bmiResult = currentKgValue / (currentCmValue/100 * currentCmValue/100);
    } else {
      bmiResult = 703 *
          (currentLbValue /
              ((currentFtValue + currentInValue) *
                  (currentFtValue + currentInValue)));
    }
    return bmiResult;
  }

  void toggleMetricMode() {
    if (isMetric == false) {
      isImperial = isMetric;
      isMetric = !isMetric;
      setState(() {});
    }
  }

  void toggleImperialMode() {
    if (isImperial == false) {
      isMetric = isImperial;
      isImperial = !isImperial;
      setState(() {});
    }
  }

  void toggleMaleMode() {
    if (isMale == false) {
      isFemale = isMale;
      isMale = !isMale;
      setState(() {});
    }
  }

  void toggleFemaleMode() {
    if (isFemale == false) {
      isMale = isFemale;
      isFemale = !isFemale;
      setState(() {});
    }
  }

}
