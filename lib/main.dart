import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_finder/test_file.dart';

import 'view/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: RootPage(
      //   i: 0,
      // ),
      home: RootPage(i: 0),
    );
  }
}
