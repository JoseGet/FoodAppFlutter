import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/utils/UiColors.dart';

import '../../../../utils/Assets.dart';
import '../../../../utils/Strings.dart';

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
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Modular.to.navigate('/welcome_screen');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.defaultGreen,
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
            child: DefaultTextStyle(
              maxLines: 1,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: 'GilroyMedium',
                  letterSpacing: 5.5),
              child: Text(
                Strings.splashScreenSubtitle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
