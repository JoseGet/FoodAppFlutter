import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foods_app/modules/login/components/screens/logIn_screen.dart';
import 'package:foods_app/modules/login/components/widgets/default_large_button.dart';
import 'package:foods_app/utils/Assets.dart';
import 'package:foods_app/utils/Strings.dart';
import 'package:foods_app/utils/Styles.dart';
import 'package:foods_app/utils/UiColors.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 77.0),
              child: SvgPicture.asset(
                Assets.coloredCarrot,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.signUp,
                    style: Styles.titleStyle,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    Strings.enterCredentials,
                    style: Styles.subtitleStyle,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.userName,
                        style: Styles.subtitleStyle.copyWith(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextField(
                        onChanged: (value) {
                          loginStore.email = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.email,
                        style: Styles.subtitleStyle.copyWith(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextField(
                        onChanged: (value) {
                          loginStore.email = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.passWord,
                        style: Styles.subtitleStyle.copyWith(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Observer(
                        builder: (_) => TextField(
                          onChanged: (value) {
                            loginStore.passWord = value;
                          },
                          obscureText: loginStore.isVisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(loginStore.isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              style: const ButtonStyle(
                                  splashFactory: NoSplash.splashFactory),
                              onPressed: () {
                                loginStore.updateFielVisibility();
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: Strings.agree,
                                style: TextStyle(color: UiColors.defaultGray),
                              ),
                              TextSpan(
                                text: Strings.termsOfService,
                                style: TextStyle(color: UiColors.defaultGreen),
                              ),
                              TextSpan(
                                text: Strings.and,
                                style: TextStyle(color: UiColors.defaultGray),
                              ),
                              TextSpan(
                                text: Strings.privacyPolice,
                                style: TextStyle(color: UiColors.defaultGreen),
                              )
                            ]),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        height: 67.0,
                        width: double.infinity,
                        child: DefaultLargeButton(
                          name: Strings.signUp,
                          function: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 57),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: Strings.alredyHaveAccount,
                                    style: TextStyle(
                                      color: UiColors.defaultTitle,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Log in',
                                    style: const TextStyle(
                                      color: UiColors.defaultGreen,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        //navigate to Signup Screen
                                        Modular.to.navigate('/loginin_screen');
                                      },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
