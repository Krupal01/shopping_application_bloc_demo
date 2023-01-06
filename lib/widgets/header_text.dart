import 'package:flutter/material.dart';

Widget HeaderText({
  required String text,
}) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    ),
  );
}
