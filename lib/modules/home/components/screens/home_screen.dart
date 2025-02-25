import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foods_app/modules/home/components/widgets/home_navigation_bar.dart';
import 'package:foods_app/utils/Assets.dart';
import 'package:foods_app/utils/UiColors.dart';
import 'package:mobx/mobx.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: HomeNavigationBar(),
      body: SizedBox.expand(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  Assets.coloredCarrot,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text("aaaaa"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
