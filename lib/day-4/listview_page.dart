import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ListView Page')),
      ),
      body: ListView(
        padding : EdgeInsets.all(16),
        children: [
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                color: Colors.brown,
                height: 100,
              ),
              Container(
                color: Colors.orange,
                height: 100,
              ),
              Container(
                color: Colors.black,
                height: 100,
              ),
            ],
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  color: Colors.brown,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.brown,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            height: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.red,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.black,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            height: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.red,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            height: 100,
          ),
        ]    
      )
    );
  }
}