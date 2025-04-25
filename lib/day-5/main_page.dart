import 'package:erwan_kurnia/day-5/routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  final String name;

  const MainPage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            'Welcome, $name!',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () => Navigator.pushNamed(
              context, 
              AppRoutes.gridView,
              arguments: name
            ),
            child: Text('Grid View Page'),
          )
        ],
      ),
    );
  }
}