import 'package:flutter/material.dart';
import 'package:foods_app/utils/UiColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Index 0: Home', style: optionStyle),
  //   Text('Index 1: Business', style: optionStyle),
  //   Text('Index 2: School', style: optionStyle),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_rounded), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: UiColors.defaultGreen,
        unselectedItemColor: UiColors.defaultTitle,
        unselectedLabelStyle: const TextStyle(color: Colors.amber),
        onTap: _onItemTapped,
      ),
      body: Container(
        child: const Center(
          child: Text("AAAAAAAAAAA"),
        ),
      ),
    );
  }
}
