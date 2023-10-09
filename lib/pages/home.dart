import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assignment/theme/themeprovider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center());
  }
}
