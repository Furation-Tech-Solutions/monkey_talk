import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/presentation/home/screens/message_screen.dart';
import 'package:monkey_talk/presentation/home/screens/request_screen.dart';
import 'package:monkey_talk/presentation/home/widgets/home_view.dart';

import '../../../core/styles.dart/stylekit.dart';
import '../../profile/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> views = <Widget>[
    HomeView(),
    RequestScreen(),
    MessageScreen(),
    ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: $styles.colors.primary200,
          iconSize: 40,
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(
            color: $styles.colors.primary200,
          ),
          backgroundColor: $styles.colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: $styles.colors.primary200,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/person.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/message.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/profile.svg'),
              label: '',
            ),
          ],
        ),
        backgroundColor: $styles.colors.background,
        body: views.elementAt(_selectedIndex),
      ),
    );
  }
}
