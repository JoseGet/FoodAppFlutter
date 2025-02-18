import 'package:flutter/material.dart';
import 'package:foods_app/utils/UiColors.dart';

class DefaultLargeButton extends StatelessWidget {
  final String name;
  final VoidCallback function;

  const DefaultLargeButton(
      {super.key, required this.name, required this.function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: UiColors.defaultGreen,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
      onPressed: function,
      child: Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
