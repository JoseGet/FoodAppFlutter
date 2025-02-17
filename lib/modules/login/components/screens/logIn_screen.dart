import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/utils/Assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 77.0),
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.coloredCarrot,
            ),
          ],
        ),
      ),
    );
  }
}
