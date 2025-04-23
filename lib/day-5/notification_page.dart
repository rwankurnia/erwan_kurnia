import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final messages = [
      'Message 1',
      'Message 2',
      'Message 3',
    ];

    final alerts = [
      'Alert 1',
      'Alert 2',
      'Alert 3',
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Messages'),
                Tab(text: 'Alerts'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: messages.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                        foregroundImage: NetworkImage('https://img.antaranews.com/cache/1200x800/2020/09/05/20200905-cristiano-ronaldo.jpg.webp'),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                      title: Text('Message ${index + 1}'),
                      subtitle: Text(messages[index]),
                    ),
                  ),
                  ListView.separated(
                    itemCount: alerts.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Alerts ${index + 1}'),
                      subtitle: Text(alerts[index]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}