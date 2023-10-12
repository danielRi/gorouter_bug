import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goscheisse/home.dart';
import 'package:goscheisse/sub1.dart';
import 'package:goscheisse/sub1sub.dart';
import 'package:goscheisse/sub2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (_, __) => const Home(),
      routes: [
        GoRoute(
            path: 'sub1',
            name: 'sub1',
            builder: (_, __) => const Sub1(),
            routes: [
              GoRoute(
                path: 'sub1sub',
                name: 'sub1sub',
                builder: (_, __) => const Sub1Sub(),
              ),
            ]),
        GoRoute(
          path: 'sub2',
          name: 'sub2',
          builder: (_, __) => const Sub2(),
        ),
      ],
    ),
  ],
);
