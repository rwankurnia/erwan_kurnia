import 'package:erwan_kurnia/day-4/theme/theme.dart';
import 'package:erwan_kurnia/day-5/routes.dart';
import 'package:erwan_kurnia/day-6/blocs/theme_cubit.dart';
import 'package:erwan_kurnia/day-7/data/db/app_db.dart';
import 'package:erwan_kurnia/day-7/pages/product_page.dart';
// import 'package:erwan_kurnia/tugas-week-01/LoginPage/tugas-01.dart';
// import 'package:erwan_kurnia/tugas-week-02/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() {
  setupInjector();
  runApp(const MyApp());
}

void setupInjector() {
  getIt.registerSingleton(AppDatabase());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],    
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state,
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: lightTheme.scaffoldBackgroundColor,
              cardTheme: lightTheme.cardTheme,
              appBarTheme: lightTheme.appBarTheme,
            ),
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: darkTheme.scaffoldBackgroundColor,
              cardTheme: darkTheme.cardTheme,
              appBarTheme: darkTheme.appBarTheme,
            ),
            // routes: routes,
            // initialRoute: AppRoutes.home,
            home: ProductPage(),
          );
        }
      ),
    );
  }
}