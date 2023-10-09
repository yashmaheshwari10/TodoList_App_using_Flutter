import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assignment/pages/home.dart';
import 'package:todo_assignment/pages/todopage.dart';
import 'package:todo_assignment/theme/themeprovider.dart';
import 'package:todo_assignment/themes/darktheme.dart';
import 'package:todo_assignment/themes/lighttheme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: tododpage(),
    );
  }
}
