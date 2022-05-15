import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page/account_page.dart';
import 'page/favorite_page.dart';
import 'page/home_page.dart';
import 'page/share_page.dart';
import 'page/ticket_page.dart';

class RootPage extends StatelessWidget {
  RootPage({Key? key, required this.i}) : super(key: key);

  final int i;

  final pages = [
    HomePage(),
    const FavoritePage(),
    const TicketPage(),
    const AccountPage(),
    const SharePage()
  ];

  final index = 0.obs;

  @override
  Widget build(BuildContext context) {
    index.value = i;
    return Scaffold(
      // extendBody: true,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF2B5876),
                Color(0xFF4E4376),
              ],
            ),
            border: Border(
              top: BorderSide(
                color: Colors.white12,
                width: 1,
              ),
            ),
          ),
          child: Obx(
            () => NavigationBar(
              height: 60,
              backgroundColor: Colors.transparent,
              animationDuration: const Duration(milliseconds: 1500),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index.value,
              onDestinationSelected: (i) {
                index.value = i;
              },
              destinations: const [
                NavigationDestination(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    label: '.'),
                NavigationDestination(
                    icon: Icon(
                      Icons.favorite_outlined,
                      color: Colors.white,
                    ),
                    label: '.'),
                NavigationDestination(
                    icon: Icon(
                      Icons.confirmation_number_outlined,
                      color: Colors.white,
                    ),
                    label: '.'),
                NavigationDestination(
                    icon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.white,
                    ),
                    label: '.'),
                NavigationDestination(
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                    ),
                    label: '.'),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2B5876),
              Color(0xff4E4376),
            ],
          ),
        ),
        child: Obx(
          () => pages[index.value],
        ),
      ),
    );
  }
}
