import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constants.dart';
import 'package:flutter_boilerplate/on_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutter boilerplate project",
      theme: createTheme(context),
      routerConfig: onRouter,
    );
  }
}
