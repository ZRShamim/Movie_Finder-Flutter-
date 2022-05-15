import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../root_page.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      bottomNavigationBar: BottomNavBar(),
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
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
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
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => RootPage(
                      i: 0,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => RootPage(
                      i: 1,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.favorite_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => RootPage(
                      i: 2,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.confirmation_number_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => RootPage(
                      i: 3,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.person_outline_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => RootPage(
                      i: 4,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
