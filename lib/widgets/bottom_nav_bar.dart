import 'package:flutter/material.dart';

class MainBottomNavbar extends StatefulWidget {
  final Function onTabChange;
  const MainBottomNavbar({Key? key, required this.onTabChange})
      : super(key: key);

  @override
  State<MainBottomNavbar> createState() => _MainBottomNavbarState();
}

class _MainBottomNavbarState extends State<MainBottomNavbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onTabChange();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedIconTheme: const IconThemeData(color: Colors.black26 , size: 20),
        selectedIconTheme: const IconThemeData(color: Colors.black , size: 20),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_mini_outlined),
            label: 'Home',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_outlined ),
            label: 'Saved',
          
            // backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined ),
            label: 'Cart',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined ),
            label: 'Setting',
            // backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5);
  }
}
