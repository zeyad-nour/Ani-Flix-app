import 'package:aniflix_app/Features/home/presentation/views/home_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(darkTheme: ThemeData.dark(), home: HomeViews());
  }
}
