import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget PaddingButton({
  double? padding,
  double? width,
  double? height,
  ButtonStyle? buttonStyle,
  required Function() onPressed,
  required Widget child,
}) {
  padding ??= 8.0;
  width ??= double.infinity;
  height ??= double.infinity;

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
