import 'package:aniflix_app/Features/home/data/repo/home_repo_imple.dart';
import 'package:aniflix_app/Features/home/presentation/maneger/Releasecubit/release_cubit_cubit.dart';
import 'package:aniflix_app/Features/home/presentation/views/home_views.dart';
import 'package:aniflix_app/core/utils/api_serves.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReleaseCubitCubit(HomeRepoImple(ApiServesAnime(Dio())))..featchReleas(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        home: HomeViews(),
      ),
    );
  }
}
