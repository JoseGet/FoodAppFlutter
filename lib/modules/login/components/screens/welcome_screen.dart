import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/modules/login/components/widgets/default_large_button.dart';
import 'package:foods_app/utils/Assets.dart';
import 'package:foods_app/utils/Strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.welcomeBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(bottom: 75.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.carrot,
                semanticsLabel: "",
              ),
              const SizedBox(
                height: 36.0,
              ),
              const SizedBox(
                width: 253.0,
                child: DefaultTextStyle(
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 48.0,
                      fontWeight: FontWeight.w700),
                  child: Text(
                    Strings.welcomeScreenTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 19.0,
              ),
              const DefaultTextStyle(
                style: TextStyle(fontFamily: 'GilroyMedium', fontSize: 16.0),
                child: Text(Strings.welcomeScreenSubTitle),
              ),
              const SizedBox(
                height: 41.0,
              ),
              Container(
                  height: 67.0,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 30.5),
                  child: DefaultLargeButton(
                    name: Strings.getStarted,
                    function: () {
                      Modular.to.navigate('/loginin_screen');
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
