import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_Icon_Widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        Spacer(),
        Custom_Icon(),
      ],
    );
  }
}
