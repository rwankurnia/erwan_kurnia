import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({super.key});

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {

  final footballPlayers = [
    'Cristiano Ronaldo',
    'Lionel Messi',
    'Neymar Jr',
    'Kylian Mbappe',
    'Kevin De Bruyne',
    'Mohamed Salah',
    'Karim Benzema',
    'Robert Lewandowski',
    'Virgil van Dijk',
    'Sadio Mane',
    'Harry Kane',
    'Gareth Bale',
    'Eden Hazard',
    'Luka Modric',
    'Sergio Ramos',
    'Gerard Pique',
    'Andres Iniesta',
    'Cristiano Ronaldo',
    'Lionel Messi',
    'Neymar Jr',
    'Kylian Mbappe',
    'Kevin De Bruyne',
    'Mohamed Salah',
    'Karim Benzema',
    'Robert Lewandowski',
    'Virgil van Dijk',
    'Sadio Mane',
    'Harry Kane',
    'Gareth Bale',
    'Eden Hazard',
    'Luka Modric',
    'Sergio Ramos',
    'Gerard Pique',
    'Andres Iniesta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Page'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          print('$index. ${footballPlayers[index]}');
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(footballPlayers[index][0]),
            ),
            title: Text(footballPlayers[index]),
          );
        },
      ),
    );
  }
}