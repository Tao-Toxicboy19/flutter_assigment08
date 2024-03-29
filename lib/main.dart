import 'package:flutter/material.dart';
import 'package:flutter_assigment08/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRouter.routes,
      initialRoute: AppRouter.welcome,
    );
  }
}
