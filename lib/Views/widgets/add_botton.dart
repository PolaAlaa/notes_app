import 'package:flutter/material.dart';

import 'package:note_app/constants.dart';

class AddBotton extends StatelessWidget {
  const AddBotton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });

  final bool isLoading;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32), color: kPrimaryTextColor),
        child: isLoading
            ? const CircularProgressIndicator()
            : const Text(
                "Add",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
