import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int newSelectedIndex = 1;

  List<Widget> pages = [
    const MenuPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffeaad4e),
                  );
                }
                return const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 6))
          ]),
          child: NavigationBar(
            // shadowColor: Colors.black,
            // elevation: 20,
            destinations: [
              NavigationDestination(
                icon: newSelectedIndex == 0
                    ? const Icon(
                        Icons.menu_book_rounded,
                        size: 30,
                        color: Color(0xffeaad4e),
                      )
                    : const Icon(
                        Icons.menu_book_outlined,
                        size: 28,
                        color: Colors.grey,
                      ),
                label: 'Menu',
              ),
              NavigationDestination(
                icon: newSelectedIndex == 1
                    ? const Icon(
                        Icons.person,
                        size: 30,
                        color: Color(0xffeaad4e),
                      )
                    : const Icon(
                        Icons.person_outlined,
                        size: 28,
                        color: Colors.grey,
                      ),
                label: 'Profile',
              ),
            ],
            selectedIndex: newSelectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                newSelectedIndex = index;
              });
            },
            backgroundColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorShape: const CircleBorder(),
          ),
        ),
      ),
      body: pages[newSelectedIndex],
    );
  }
}
