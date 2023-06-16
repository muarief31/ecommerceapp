import 'package:ecommerceapp/favooritePage.dart';
import 'package:ecommerceapp/home_pages.dart';
import 'package:ecommerceapp/searchPage.dart';
import 'package:ecommerceapp/userPage.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

enum _SelectedTab { home, search, favorite, user }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: [
            homePages(),
            searchPage(),
            favoritePage(),
            userPage(),
            // compassPage(),
            // orderPage(),
            // userPage(),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xffFFCB11),
        backgroundColor: Color(0xff232327),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "images/homeWarna.png"
                  : "images/home.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.search
                  ? "images/searchWarna.png"
                  : "images/search.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.favorite
                  ? "images/hearWarna.png"
                  : "images/heartN.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.user
                  ? "images/userWarna.png"
                  : "images/user.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
