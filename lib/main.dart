import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/theme.dart';
import 'package:flutter_boilerplate/on_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/bloc/export_blocs.dart';

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
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(),
        )
      ],
      child: MaterialApp.router(
        title: "Flutter boilerplate project",
        theme: createTheme(context),
        routerConfig: onRouter,
      ),
    );
  }
}
