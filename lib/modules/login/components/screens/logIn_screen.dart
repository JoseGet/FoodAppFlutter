import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/utils/Assets.dart';
import 'package:foods_app/utils/Strings.dart';
import 'package:foods_app/utils/Styles.dart';

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
                      DefaultTextStyle(
                        style: Styles.titleStyle,
                        child: const Text(Strings.loging),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      DefaultTextStyle(
                        style: Styles.subtitleStyle,
                        child: const Text(Strings.enterEmailPassword),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextStyle(
                            style: Styles.subtitleStyle.copyWith(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.w700,
                            ),
                            child: const Text(Strings.email),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const TextField()
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextStyle(
                            style: Styles.subtitleStyle.copyWith(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.w700,
                            ),
                            child: const Text(Strings.passWord),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            obscureText: isVisible,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
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
                                child: const Text(Strings.forgotPassword),
                              ),
                            ],
                          ),
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
