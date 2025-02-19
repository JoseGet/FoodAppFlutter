import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/modules/login/components/stores/login_store.dart';
import 'package:foods_app/modules/login/components/widgets/default_large_button.dart';
import 'package:foods_app/utils/Assets.dart';
import 'package:foods_app/utils/Strings.dart';
import 'package:foods_app/utils/Styles.dart';
import 'package:foods_app/utils/UiColors.dart';

final loginStore = LoginStore();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Expanded(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 77.0),
          child: Column(
            children: [
              SvgPicture.asset(
                Assets.coloredCarrot,
              ),
              const SizedBox(
                height: 100.0,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.loging,
                        style: Styles.titleStyle,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        Strings.enterEmailPassword,
                        style: Styles.subtitleStyle,
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
                          const SizedBox(
                            height: 10.0,
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
                          const SizedBox(
                            height: 10.0,
                          ),
                          Observer(
                            builder: (_) => TextField(
                              onChanged: (value) {
                                loginStore.passWord = value;
                              },
                              obscureText: loginStore.isVisible,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isVisible
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  Strings.forgotPassword,
                                  style: TextStyle(
                                    color: UiColors.defaultTitle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            height: 67.0,
                            width: double.infinity,
                            child: DefaultLargeButton(
                              name: Strings.logIn,
                              function: () {},
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: "Don't have an account? ",
                                      style: TextStyle(
                                        color: UiColors.defaultTitle,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Singup',
                                      style: const TextStyle(
                                        color: UiColors.defaultGreen,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          //navigate to Signup Screen
                                          Modular.to.navigate('/singup_screen');
                                        },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
