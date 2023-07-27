import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/ExplorerScreen.dart';
import 'package:live_score_ui/Screens/HomeScreen.dart';
import 'package:live_score_ui/Screens/ProfileScreen.dart';
import 'package:live_score_ui/Screens/StandingsScreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currenIndex = 0;
  final pages = const [
    HomeScreen(),
    ExplorerScreen(),
    StandingScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff246BFD),
        unselectedItemColor: Colors.grey,
        currentIndex: currenIndex,
        onTap: (index) {
          setState(() {
            currenIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor:const Color(0xff222232),
              icon: currenIndex == 0
                  ?const Icon(Icons.circle, size: 10)
                  :const Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor:const Color(0xff222232),
              icon: currenIndex == 1
                  ?const Icon(Icons.circle, size: 10)
                  :const Icon(Icons.explore),
              label: 'Explorer'),
          BottomNavigationBarItem(
              backgroundColor:const Color(0xff222232),
              icon: currenIndex == 2
                  ? const Icon(Icons.circle, size: 10)
                  : const Icon(Icons.insert_chart_outlined),
              label: 'Standing'),
          BottomNavigationBarItem(
              backgroundColor:const Color(0xff222232),
              icon: currenIndex == 3
                  ?const Icon(Icons.circle, size: 10)
                  :const Icon(Icons.person_outline),
              label: 'My Profile'),
        ],
      ),
      body: pages[currenIndex],
    );
  }
}
