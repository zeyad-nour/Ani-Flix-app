import 'package:aniflix_app/Features/home/presentation/views/widgets/Home_Views_body.dart';
import 'package:aniflix_app/constant.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kBackgroundColor, body: HomeViewsBody());
  }
}
