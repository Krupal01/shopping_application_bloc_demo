import 'package:flutter/material.dart';

Widget Space({
  double? height,
  double? width,
}) {
  height ??= 20.0;
  width ??= double.infinity;
  return SizedBox(
    height: height,
    width: double.infinity,
  );
}
