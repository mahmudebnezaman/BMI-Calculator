import 'package:bmi_calculator/consts/strings.dart';
import 'package:bmi_calculator/views/result.dart';
import 'package:bmi_calculator/widgets/bigCard.dart';
import 'package:bmi_calculator/widgets/customCard.dart';
import 'package:bmi_calculator/widgets/customElevatedButton.dart';
import 'package:bmi_calculator/widgets/customHeightSpacer.dart';
import 'package:bmi_calculator/widgets/customTextBox.dart';
import 'package:bmi_calculator/widgets/genderButton.dart';

import 'package:flutter/material.dart';

bool heightButton1Selected = false;
bool heightButton2Selected = false;

bool weightButton1Selected = false;
bool weightButton2Selected = false;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      onTap: (){},
                      title: 'Imperial',
                    ),
                    CustomElevatedButton(
                      context: context,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      onTap: (){},
                      title: 'Metric',
                      isSelected: false,
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
                      CustomTextBox(
                        context: context,
                        title: ft,
                      ),
                      CustomTextBox(
                        context: context,
                        title: inch,
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
                      CustomTextBox(
                        context: context,
                        title: 'Kg',
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Result(),
                    ),
                  ),
                  title: 'Calculate',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
