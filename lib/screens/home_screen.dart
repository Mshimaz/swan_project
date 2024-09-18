import 'package:flutter/material.dart';
import 'package:swan_app/constants/images.dart';
import 'package:swan_app/screens/swan_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const SwanHomeScreen(),
    const Center(child: Text('Brands Page')),
    const Center(child: Text('Best Items Page')),
    const Center(child: Text('Categories Page')),
    const Center(child: Text('Account Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 80.0,
          child: Image.asset(Images.swanLogo),
        ),
        leading: null,
        actions: [
          IconButton(
            icon: Image.asset(Images.searchIcon),
            onPressed: () {
              // Notification action
            },
          ),
          IconButton(
            icon: Image.asset(Images.favouriteIcon),
            onPressed: () {
              // Settings action
            },
          ),
          IconButton(
            icon: Image.asset(Images.cartIcon),
            onPressed: () {
              // Info action
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              Images.homeIcon,
              color: _selectedIndex == 0
                  ? const Color(0xff411e4a)
                  : const Color(0xff6F6F6F),
            ),
            label: 'Swan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Images.brandIcon,
              color: _selectedIndex == 1
                  ? const Color(0xff411e4a)
                  : const Color(0xff6F6F6F),
            ),
            label: 'Brands',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.bestItemsIcon,
                color: _selectedIndex == 2
                    ? const Color(0xff411e4a)
                    : const Color(0xff6F6F6F),
              ),
              label: 'Best Items'),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.categoriesIcon,
                color: _selectedIndex == 3
                    ? const Color(0xff411e4a)
                    : const Color(0xff6F6F6F),
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
            icon: Image.asset(
              Images.profileIcon,
              color: _selectedIndex == 4
                  ? const Color(0xff411e4a)
                  : const Color(0xff6F6F6F),
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff411e4a),
        onTap: _onItemTapped,
      ),
    );
  }
}
