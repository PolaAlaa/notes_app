import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    this.maxline = 1,
  });

  final String? title;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: maxline,
        style: const TextStyle(
          color: KPrimaryTextColor,
        ),
        cursorColor: KPrimaryTextColor,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: KPrimaryTextColor),
          border: biuldBorder(),
          enabledBorder: biuldBorder(),
          focusedBorder: biuldBorder(KPrimaryTextColor),
        ));
  }

  OutlineInputBorder biuldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
