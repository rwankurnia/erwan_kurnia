import 'package:erwan_kurnia/day-4/gridview_builder_page.dart';
import 'package:erwan_kurnia/day-4/gridview_count_page.dart';
import 'package:erwan_kurnia/day-4/gridview_page.dart';
import 'package:erwan_kurnia/day-5/home_page.dart';
import 'package:erwan_kurnia/day-6/pages/counter_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String gridView = '/gridview';
  static const String gridViewCount = '/gridview-count';
  static const String gridViewBuilder = '/gridview-builder';
  static const String counter= '/counter';
  // static const String details = '/details';
  // static const String settings = '/settings';
  // static const String about = '/about';
  // static const String profile = '/profile';
}

final routes = {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.gridView: (context) => const GridviewPage(),
  AppRoutes.gridViewCount: (context) => const GridviewCountPage(),
  AppRoutes.gridViewBuilder: (context) => const GridviewBuilderPage(),
  AppRoutes.counter: (context) => const CounterPage(),
};