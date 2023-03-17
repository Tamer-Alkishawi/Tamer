import 'package:anas/pages/add_page.dart';
import 'package:anas/pages/edit_page.dart';
import 'package:anas/pages/home_page.dart';
import 'package:anas/pages/launch_page.dart';
import 'package:anas/pages/list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnasApp());
}

class AnasApp extends StatelessWidget {
  const AnasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_page',
      routes: {
        '/launch_page': (context) => const LaunchPage(),
        '/home_page': (context) => const HomePage(),
        '/list_page': (context) =>  ListPage(),
        '/add_page': (context) => const AddPage(),
        '/edit_page': (context) => const EditPage(),
      },
    );
  }
}
