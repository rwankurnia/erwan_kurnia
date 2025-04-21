import 'package:flutter/material.dart';

class FootballPlayerCard extends StatelessWidget {
  const FootballPlayerCard({
    super.key,
    required this.footballPlayer,
  });

  final Map<String, String?> footballPlayer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: footballPlayer['image'] != null 
                  ? NetworkImage(footballPlayer['image']!)
                  : null,
              radius: 40,
              child: Text(footballPlayer['name']![0]),
            ),
            SizedBox(height: 8),
            Text(
              footballPlayer['name']!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}