library password_stepper;

import 'package:flutter/material.dart';

///[ViewPasswordStepper] This class is use to View Password Stepper
class ViewPasswordStepper extends StatelessWidget {
  /// * [String] Creates a passwordText for an listener for your text
  final String? passwordText;

  /// * [String] Creates a textWeak for an your weak text String
  final String? textWeak;

  /// * [String] Creates a textWeak for an your Average text String
  final String? textAverage;

  /// * [String] Creates a textWeak for an your Strong text String
  final String? textStrong;

  /// * [Color] Creates a colorWeak for an your Weak text color
  final Color? colorWeak;

  /// * [Color] Creates a colorAverage for an your Average text color
  final Color? colorAverage;

  /// * [Color] Creates a colorStrong for an your Strong text color
  final Color? colorStrong;

  /// * [Color] Creates a colorUnSelect for an your color Un Select
  final Color? colorUnSelect;

  /// * [TextStyle] Creates a textStyle for an your Text Style
  final TextStyle? textStyle;

  /// * [RegExp] Creates a numberRegExp for an your number RegExp
  final RegExp? numberRegExp;

  /// * [RegExp] Creates a letterRegExp for an your letter RegExp
  final RegExp? letterRegExp;

  const ViewPasswordStepper({
    Key? key,
    required this.passwordText,
    this.colorWeak,
    this.colorAverage,
    this.colorStrong,
    this.colorUnSelect,
    this.textStyle,
    this.textWeak,
    this.textAverage,
    this.textStrong,
    this.numberRegExp,
    this.letterRegExp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 47,
              height: 4,
              margin: const EdgeInsets.only(right: 18),
              decoration:
                  BoxDecoration(color: getStatusColor(), borderRadius: BorderRadius.circular(2)),
            ),
            Container(
              width: 47,
              height: 4,
              margin: const EdgeInsets.only(right: 18),
              decoration: BoxDecoration(
                  color: getStatusNo() == 1 ? colorUnSelect ?? Colors.grey : getStatusColor(),
                  borderRadius: BorderRadius.circular(2)),
            ),
            Container(
              width: 47,
              height: 4,
              margin: const EdgeInsets.only(right: 18),
              decoration: BoxDecoration(
                  color: getStatusNo() == 1 || getStatusNo() == 2
                      ? colorUnSelect ?? Colors.grey
                      : getStatusColor(),
                  borderRadius: BorderRadius.circular(2)),
            ),
            Expanded(
                child: Text(
              getStatusName(),
              style: textStyle != null
                  ? TextStyle(
                      fontSize: textStyle!.fontSize ?? 13,
                      color: getStatusColor(),
                      fontFamily: textStyle!.fontFamily ?? 'robot',
                      fontWeight: textStyle!.fontWeight ?? FontWeight.bold)
                  : TextStyle(fontSize: 13, color: getStatusColor(), fontWeight: FontWeight.bold),
              textAlign: TextAlign.end,
            )),
            const SizedBox(
              width: 14,
            ),
          ],
        ));
  }

  ///[getStatusName] This method use to get Status Name
  String getStatusName() {
    if (passwordStrength() <= 1 / 4) {
      return textWeak ?? 'Weak';
    } else if (passwordStrength() == 2 / 4 || passwordStrength() == 3 / 4) {
      return textAverage ?? 'Average';
    } else {
      return textStrong ?? 'Strong';
    }
  }

  ///[getStatusNo] This method use to get Status No
  int getStatusNo() {
    if (passwordStrength() <= 1 / 4) {
      return 1;
    } else if (passwordStrength() == 2 / 4 || passwordStrength() == 3 / 4) {
      return 2;
    } else {
      return 3;
    }
  }

  ///[getStatusColor] This method use to get Status Color
  Color getStatusColor() {
    if (passwordStrength() <= 1 / 4) {
      return colorWeak ?? Colors.red;
    } else if (passwordStrength() == 2 / 4 || passwordStrength() == 3 / 4) {
      return colorAverage ?? Colors.orange;
    } else {
      return colorStrong ?? Colors.green;
    }
  }

  ///[passwordStrength] This method use to password Strength
  double passwordStrength() {
    RegExp numReg = numberRegExp ?? RegExp(r'.*[0-9].*');
    RegExp letterReg = letterRegExp ?? RegExp(r'.*[A-Za-z].*');

    if (passwordText!.isEmpty) {
      return 0;
    } else if (passwordText!.length < 6) {
      return 1 / 4;
    } else if (passwordText!.length < 8) {
      return 2 / 4;
    } else {
      if (!letterReg.hasMatch(passwordText!) || !numReg.hasMatch(passwordText!)) {
        return 3 / 4;
      } else {
        return 1;
      }
    }
  }
}
