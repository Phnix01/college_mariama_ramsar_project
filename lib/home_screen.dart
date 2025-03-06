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

  final List<Widget> BottomBarPages = [
    MapsScreen(),
    AstucesScreen(),
    NotificationsScreen(),
  ];

  void onTap(int index) {
    _pageController.jumpToPage(index);
    _controller.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: List.generate(
              BottomBarPages.length, (index) => BottomBarPages[index]),
          onPageChanged: (index) {
            _controller.index = index;
          },
        ),
        bottomNavigationBar: AnimatedNotchBottomBar(
          notchBottomBarController: _controller,
          color: Colors.green,
          showLabel: true,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          shadowElevation: 5,
          kBottomRadius: 5.0,
          notchColor: Colors.white,
          removeMargins: false,
          showShadow: false,
          bottomBarItems: [
            BottomBarItem(
                inActiveItem: Icon(Icons.map),
                activeItem: Icon(Icons.map),
                itemLabel: 'Maps'),
            BottomBarItem(
                inActiveItem: Icon(Icons.lightbulb),
                activeItem: Icon(Icons.lightbulb),
                itemLabel: 'Astuces'),
            BottomBarItem(
                inActiveItem: Badge(
                  child: Icon(Icons.notifications),
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  label: Text("3"),
                ),
                activeItem: Icon(Icons.notifications),
                itemLabel: 'Notifications')
          ],
          onTap: onTap,
          kIconSize: 24.0,
        ));
  }
}
