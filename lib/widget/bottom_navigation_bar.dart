import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../view/award/view/award_view.dart';
import '../view/food/view/food_view.dart';
import '../view/home/view/home_view.dart';
import '../view/notification/view/notification_view.dart';
import '../view/profile/view/private_profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    FoodView(),
    AwardView(),
    NotificationView(),
    PrivateProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: AppColors.accentColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Food',
              backgroundColor: AppColors.accentColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard),
              label: 'Gift',
              backgroundColor: AppColors.accentColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: AppColors.accentColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: AppColors.accentColor),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
