import 'package:flutter/material.dart';

class Custom_Icon extends StatelessWidget {
  const Custom_Icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.07),
      ),
      child: const Icon(
        Icons.search,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
