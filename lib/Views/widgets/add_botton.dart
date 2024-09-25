import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class AddBotton extends StatelessWidget {
  const AddBotton({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32), color: KPrimaryTextColor),
        child: const Text(
          "Add",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
