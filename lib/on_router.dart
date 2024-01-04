import 'package:flutter_boilerplate/src/screens/export_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRouter {

  static final GoRouter _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => const LaunchScreen(),
        ),
        GoRoute(
          name: '/login',
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        )
      ]
  );

  GoRouter get router => _router;
}