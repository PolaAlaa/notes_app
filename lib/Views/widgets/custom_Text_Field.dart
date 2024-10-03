import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.maxline = 1,
    this.onSaved,
    this.onChanged,
  });

  final String? title;
  final int maxline;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is required";
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxline,
        style: const TextStyle(
          color: kPrimaryTextColor,
        ),
        cursorColor: kPrimaryTextColor,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: kPrimaryTextColor),
          border: biuldBorder(),
          enabledBorder: biuldBorder(),
          focusedBorder: biuldBorder(kPrimaryTextColor),
        ));
  }

  OutlineInputBorder biuldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
