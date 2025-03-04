import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:colloge_mariama_ramsar_project/screens/astuces_screen.dart';
import 'package:colloge_mariama_ramsar_project/screens/maps_screen.dart';
import 'package:colloge_mariama_ramsar_project/screens/notifications_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(initialPage: 0);
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);
  int maxCount = 2;
  @override
  void dispose() {
    _pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  List<Widget> BottomBarPages = [
    NotificationsScreen(),
    MapsScreen(),
    AstucesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _pageController,
      ),
    );
  }
}

// notchBottomBarController: notchBottomBarController,
//           bottomBarItems: bottomBarItems,
//           onTap: onTap,
//           kIconSize: kIconSize,
//           kBottomRadius: kBottomRadius