import 'package:flutter/material.dart';

Widget MainChip({
  required String text,
  VoidCallback? onTap,
  Color? color,
  bool? isSelected,
}) {
  onTap ??= () {};
  isSelected ??= false;

  return Padding(
    padding : const EdgeInsets.symmetric(horizontal: 5.0),
    child: GestureDetector(
      onTap: onTap,
      child: Chip(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0),),),
        label: Text(text , style: TextStyle(color: isSelected ? Colors.white : Colors.black),),
        backgroundColor: isSelected ? Colors.black : Colors.black26,
      ),
    ),
  );
}
