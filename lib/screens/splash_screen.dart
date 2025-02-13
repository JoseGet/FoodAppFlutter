import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/screens/home_screen.dart';
import 'package:foods_app/utils/UiColors.dart';

import '../utils/Assets.dart';
import '../utils/Strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.splashScreenBackground,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            Assets.logo,
            semanticsLabel: "",
          ),
          const Positioned(
            top: 450,
            left: 135,
            child: Text(
              Strings.splashScreenSubtitle,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: 'Gilroy',
                  letterSpacing: 5.5),
            ),
          )
        ],
      ),
    );
  }
}
