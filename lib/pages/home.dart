import 'package:ecommerce_flutter/components/bottom_nav.dart';
import 'package:ecommerce_flutter/pages/cart_page.dart';
import 'package:ecommerce_flutter/pages/shop_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//the selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // method to update selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to navigate between

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
