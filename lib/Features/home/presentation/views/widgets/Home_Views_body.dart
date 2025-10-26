import 'package:aniflix_app/Features/home/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [SizedBox(height: 30), Customappbar()]),
    );
  }
}
