import 'package:flutter/material.dart';

Widget MainSearchBar({
  required Function(String text) onChange,
  double? height,
}) {
  height ??= 60.0;

  return SizedBox(
    height: height,
    child: TextField(
      onChanged: onChange,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 0,
        ),
        border: OutlineInputBorder(),
        hintText: "Serch",
      ),
      style: const TextStyle(
        fontSize: 12.0,
        color: Colors.black,
      ),
      textAlignVertical: TextAlignVertical.center,
    ),
  );
}
