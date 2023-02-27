import 'package:flutter/material.dart';

class ShrinkTextField extends StatelessWidget {
  final String hintText;
  final void Function(String) onChange;
  final TextEditingController? controller;
  const ShrinkTextField({
    required this.onChange,
    required this.hintText,
    this.controller,
  });

  static const String _baseFont = 'Grotte';

  static const textSubtitleText16Regular = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) => TextField(
        onChanged: onChange,
        controller: controller,
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.top,
        style: textSubtitleText16Regular,
        decoration: InputDecoration.collapsed(
          border: InputBorder.none,
          hintText: hintText,
        ),
        maxLines: null,
      );
}
