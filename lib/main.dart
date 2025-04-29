import 'package:erwan_kurnia/day-4/theme/theme.dart';
import 'package:erwan_kurnia/day-6/blocs/theme_cubit.dart';
import 'package:erwan_kurnia/day-7/data/local_storage/theme_local_storage.dart';
import 'package:erwan_kurnia/day-7/pages/product_page.dart';
import 'package:erwan_kurnia/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'day-5/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(
            ThemeLocalStorage(
              getIt<SharedPreferences>(),
            ),
          )..init(),
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
            routes: routes,
            initialRoute: AppRoutes.home,
            // home: ProductPage(),
          );
        }
      ),
    );
  }
}