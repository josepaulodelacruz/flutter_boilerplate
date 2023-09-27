import 'package:flutter_boilerplate/screens/export_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/string_routes.dart';


final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter onRouter = GoRouter(
  initialLocation: login,
  routes: [
    GoRoute(
      name: splash,
      path: splash,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: login,
      path: login,
      builder: (context, state) => const LoginScreen(),
    )
  ]
);