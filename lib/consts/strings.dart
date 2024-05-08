import 'package:flutter/material.dart';

String bmiCalculator = 'BMI Calculator';
String bodyMassIndex = 'Body Mass Index';
String gender = 'Gender';
String male = 'Male';
String female = 'Female';
String age = 'Age';
String height = 'Height';
String weight = 'Weight';
String cm = 'Cm';
String ft = 'Ft';
String inch = 'In';
String kg = 'Kg';
String lb = 'Lb';
String yourResult = 'Your result';


//Images

String imgRuler = 'assets/icons/ruler.png';
String imgWeightScale = 'assets/icons/weight_scale.png';

//Colors

Color colorVerySeverelyUnderweight = const Color(0xff690b00);
Color colorSeverelyUnderweight = const Color(0xffd94100);
Color colorUnderweight = const Color(0xffffd700);
Color colorNormal = const Color(0xff03a621);
Color colorOverWeight = const Color(0xffffd700);
Color colorObeseClassI = const Color(0xffd97b00);
Color colorObeseClassII = const Color(0xffd94100);
Color colorObeseClassIII = const Color(0xff690b00);

//BMI Values

var bmiValues = [
  {
    'title' : 'Very Severely Underweight',
    'value' : '<- 14.9',
    'color' : colorVerySeverelyUnderweight,
  },
  {
    'title' : 'Severely Underweight',
    'value' : '15.0 - 15.9',
    'color' : colorSeverelyUnderweight,
  },
  {
    'title' : 'Underweight',
    'value' : '16.0 - 18.4',
    'color' : colorUnderweight,
  },{
    'title' : 'Normal',
    'value' : '18.5 - 24.9',
    'color' : colorNormal,
  },{
    'title' : 'Overweight',
    'value' : '25.0 - 29.9',
    'color' : colorOverWeight,
  },
  {
    'title' : 'Obese Class I',
    'value' : '30.0 - 34.9',
    'color' : colorObeseClassI,
  },{
    'title' : 'Obese Class II',
    'value' : '35.0 - 35.9',
    'color' : colorObeseClassII,
  },{
    'title' : 'Obese Class III',
    'value' : '40.0 ->       ',
    'color' : colorObeseClassIII,
  },
];