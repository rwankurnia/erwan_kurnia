import 'package:flutter/material.dart';
import 'widgets/football_player_card.dart';

class GridviewBuilderPage extends StatefulWidget {
  const GridviewBuilderPage({super.key});

  @override
  State<GridviewBuilderPage> createState() => _GridviewBuilderPageState();
}

class _GridviewBuilderPageState extends State<GridviewBuilderPage> {

  final footballPlayers = [
    {'name': 'Cristiano Ronaldo', 'image': 'https://img.antaranews.com/cache/1200x800/2020/09/05/20200905-cristiano-ronaldo.jpg.webp'},
    {'name': 'Lionel Messi', 'image': 'https://ds-images.bolavip.com/news/image?src=https%3A%2F%2Fimages.bolavip.com%2Fwebp%2Fen%2Ffull%2FBUS_20241001_BUS_243271_Lionel-Messi-10-of-Inter-Miami-looks-on-prior-to-a-game-against-the-Charlotte-FC-at-Chase-Stadium.webp&width=1200&height=740'},
    {'name': 'Neymar Jr', 'image': null},
    {'name': 'Kylian Mbappe', 'image': null},
    {'name': 'Kevin De Bruyne', 'image': null},
    {'name': 'Mohamed Salah', 'image': null},
    {'name': 'Karim Benzema', 'image': null},
    {'name': 'Robert Lewandowski', 'image': null},
    {'name': 'Virgil van Dijk', 'image': null},
    {'name': 'Sadio Mane', 'image': null},
    {'name': 'Harry Kane', 'image': null},
    {'name': 'Gareth Bale', 'image': null},
    {'name': 'Eden Hazard', 'image': null},
    {'name': 'Luka Modric', 'image': null},
    {'name': 'Sergio Ramos', 'image': null},
    {'name': 'Gerard Pique', 'image': null},
    {'name': 'Andres Iniesta', 'image': null},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Builder Page'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 2/3,
        ),
        padding: EdgeInsets.all(8),
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) => FootballPlayerCard(
          footballPlayer: footballPlayers[index]
        )
      ),
    );
  }
}
