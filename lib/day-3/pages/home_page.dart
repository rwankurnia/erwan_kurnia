import 'package:erwan_kurnia/day-3/widget/counter_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 1;

  @override
  void initState() {
    counter = 18;
    super.initState();
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page',
            style: TextStyle(
              color: const Color.fromARGB(233, 229, 226, 226),
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add)
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert)
            ),
          ],
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 83, 127, 184),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.login)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.logout)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              CounterWidget(counter: counter),
            ],
          ),
        ),         
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {}, 
                child: Text('Filled Button')
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('Elevated Button')
              ),
            ],
          ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Gesture Detector'),
                          content: Text('OnTap'),
                        )
                      );
                    },
                    child: Image.asset(
                      'assets/ic_launcher.png',
                      width: 99,
                      height: 99, 
                      ),
                  ),
                  Image.asset(
                    'assets/ic_launcher.png',
                    width: 99,
                    height: 99,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Gesture Detector'),
                          content: Text('OnTap'),
                        )
                      );
                    },
                    child: Image.asset(
                      'assets/ic_launcher.png',
                      width: 72,
                      height: 72,
                    ),
                  ),
                ],
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child : Icon(Icons.add),
        ),
      ),
    );
  }
}