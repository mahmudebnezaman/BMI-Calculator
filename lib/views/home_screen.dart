import 'package:bmi_calculator/consts/strings.dart';

// import 'package:bmi_calculator/model/bmiCalculation.dart';
import 'package:bmi_calculator/views/result.dart';
import 'package:bmi_calculator/widgets/bigCard.dart';
import 'package:bmi_calculator/widgets/customCard.dart';
import 'package:bmi_calculator/widgets/customElevatedButton.dart';
import 'package:bmi_calculator/widgets/customHeightSpacer.dart';
import 'package:bmi_calculator/widgets/customTextBox.dart';
import 'package:bmi_calculator/widgets/genderButton.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController ageController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();
  TextEditingController lbController = TextEditingController();
  TextEditingController cmController = TextEditingController();
  TextEditingController kgController = TextEditingController();

  bool isMetric = true;
  bool isImperial = false;

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

  bool isMale = true;
  bool isFemale = false;

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
                CustomHeightSpacer(
                  context: context,
                ),
                Row(
                  children: [
                    CustomCard(
                        context: context,
                        width: MediaQuery.sizeOf(context).width * 0.43,
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              gender,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GenderButton(
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
                                  GenderButton(
                                    context: context,
                                    buttonName: female,
                                    isSelected: isFemale,
                                    onTap: toggleFemaleMode,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    const Spacer(),
                    CustomCard(
                      context: context,
                      width: MediaQuery.sizeOf(context).width * 0.43,
                      widget: CustomTextBox(
                        context: context,
                        title: age,
                        controller: ageController,
                      ),
                    ),
                  ],
                ),
                CustomHeightSpacer(
                  context: context,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      context: context,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      onTap: toggleImperialMode,
                      title: 'Imperial',
                      isSelected: isImperial,
                    ),
                    CustomElevatedButton(
                      context: context,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      onTap: toggleMetricMode,
                      title: 'Metric',
                      isSelected: isMetric,
                    ),
                  ],
                ),
                CustomHeightSpacer(
                  context: context,
                ),
                CustomCard(
                  context: context,
                  width: MediaQuery.sizeOf(context).width,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BigCardTitle(
                        context: context,
                        img: imgRuler,
                        title: height,
                      ),
                      isMetric
                          ? CustomTextBox(
                              context: context,
                              title: cm,
                              controller: cmController,
                            )
                          : Row(
                              children: [
                                CustomTextBox(
                                  context: context,
                                  title: ft,
                                  controller: ftController,
                                ),
                                CustomTextBox(
                                  context: context,
                                  title: inch,
                                  controller: inController,
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                CustomHeightSpacer(
                  context: context,
                ),
                CustomCard(
                  context: context,
                  width: MediaQuery.sizeOf(context).width,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BigCardTitle(
                        context: context,
                        img: imgWeightScale,
                        title: weight,
                      ),
                      isMetric
                          ? CustomTextBox(
                              context: context,
                              title: kg,
                              controller: kgController,
                            )
                          : CustomTextBox(
                              context: context,
                              title: lb,
                              controller: lbController,
                            ),
                    ],
                  ),
                ),
                CustomHeightSpacer(
                  context: context,
                ),
                CustomElevatedButton(
                  context: context,
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Result(
                    //       bmiResult: bmiCalculation(),
                    //     ),
                    //   ),
                    // ).then((value) {
                    //   dispose();
                    // });
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

  void validation() {
    double? ageValue = double.tryParse(ageController.text) ?? 0;
    double? cmValue = double.tryParse(cmController.text) ?? 0;
    double? kgValue = double.tryParse(kgController.text) ?? 0;
    double? ftValue = double.tryParse(ftController.text) ?? 0;
    double? inValue = double.tryParse(inController.text) ?? 0;
    double? lbValue = double.tryParse(lbController.text) ?? 0;

    var snackBar = SnackBar(
      content: Text(
        'Values should be greater than 0',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      backgroundColor: const Color(0xFF25232B),
      duration: const Duration(seconds: 2),
    );
    if (isMetric) {
      if (ageValue <= 0 || cmValue <= 0 || kgValue <= 0) {
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
        ).then((value) {
          dispose();
        });
      }
    } else {
      if (ageValue <= 0 || ftValue <= 0 || inValue <= 0 || lbValue <= 0) {
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
        ).then((value) {
          dispose();
        });
      }
    }
  }

  double bmiCalculation() {
    // double? ageValue = double.tryParse(ageController.text) ?? 0;
    double? cmValue = double.tryParse(cmController.text) ?? 0;
    cmValue = cmValue / 100;
    double? kgValue = double.tryParse(kgController.text) ?? 0;
    double? ftValue = double.tryParse(ftController.text) ?? 0;
    if (ftValue != 0) {
      ftValue *= 12;
    }
    double? inValue = double.tryParse(inController.text) ?? 0;
    double? lbValue = double.tryParse(lbController.text) ?? 0;

    double bmiResult;

    if (isMetric) {
      bmiResult = kgValue / (cmValue * cmValue);
    } else {
      bmiResult = 703 * (lbValue / ((ftValue + inValue) * (ftValue + inValue)));
    }
    return bmiResult;
  }

  @override
  void dispose() {
    super.dispose();
    ageController.clear();
    cmController.clear();
    kgController.clear();
    ftController.clear();
    inController.clear();
    lbController.clear();
  }
}
