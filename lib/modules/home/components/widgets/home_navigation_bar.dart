import 'package:flutter/material.dart';
import 'package:foods_app/modules/home/components/screens/cart_screen.dart';
import 'package:foods_app/modules/home/components/screens/explore_screen.dart';
import 'package:foods_app/modules/home/components/screens/favourite_screen.dart';
import 'package:foods_app/modules/home/components/screens/home_screen.dart';
import 'package:foods_app/utils/UiColors.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({super.key});

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen()
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded), label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Account'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: UiColors.defaultGreen,
      unselectedItemColor: UiColors.defaultTitle,
      unselectedLabelStyle: const TextStyle(color: Colors.amber),
      onTap: _onItemTapped,
    );
  }
}
