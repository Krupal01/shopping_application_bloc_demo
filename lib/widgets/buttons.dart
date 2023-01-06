import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget PaddingButton({
  double? padding,
  double? width,
  double? height,
  Color? backgroundColor,
  Color? textColor,
  double? fontSize,
  ButtonStyle? buttonStyle,
  required Function() onPressed,
  required Widget child,
}) {
  padding ??= 8.0;
  width ??= double.infinity;
  height ??= 40.0;
  backgroundColor ??= Colors.black;
  textColor ??= Colors.white;
  fontSize ??= 15.0;

  buttonStyle ??= ElevatedButton.styleFrom(
    backgroundColor: backgroundColor,
    textStyle: TextStyle(
      color: textColor,
      fontSize: fontSize,
    ),
  );

  return Padding(
    padding: EdgeInsets.all(padding),
    child: SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: child,
      ),
    ),
  );
}
