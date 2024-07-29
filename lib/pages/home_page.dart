import 'dart:io';

import 'package:flutter/material.dart';
import 'package:storeapp/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  final List<Widget> _pages = [
    const ShopPage(),
    const ProfilePage(),
    const CartPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(icon: Icon(
              Icons.menu,
              color: Colors.black,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },);
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[700],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'lib/images/g715.png', 
                    color: Colors.black54,
                    height: 20,
                    semanticLabel: "Logo", ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About"),
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 20),
            child: ListTile(
              leading: Icon(Icons.logout,),
              title: Text("Logout"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap:() => exit(0),
            ),
          ),
        ],),
      ),
      body: _pages[_selectedIndex],
    );
  }
}