import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<IconData> drawerIcons = [
    Icons.move_to_inbox,
    Icons.inbox,
    Icons.people,
    Icons.local_offer,
    Icons.star,
    Icons.access_time,
    Icons.label,
    Icons.send,
    Icons.send,
    Icons.note,
    Icons.mail,
    
    Icons.error,
    Icons.delete,
    Icons.label,
    Icons.label,
    Icons.settings,
    Icons.help,
  ];

  static List<String> _drawerMenu = [
    "All inboxes",
    "Primary",
    "Social",
    "Promotions",
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Outbox",
    "Drafts",
    "All mail",
    "Spam",
    "Bin",
    "Sent",
    "Trash",
    "Settings",
    "Help & feedback"
  ];

  final Drawer drawer = Drawer(
    child: ListView.builder(
        itemCount: _drawerMenu.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(color: Colors.red),
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.face,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "John",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "john@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            );
          }

          return ListTile(
            leading: Icon(drawerIcons[index - 1]),
            title: Text(_drawerMenu[index - 1]),
          );
        }),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text("Primary"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 54,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      child: Text(
                        "T",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Linkedin"),
                              Spacer(),
                              Text("31 Oct")
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                              "This is just a demo message. This is just a demo message. This is just a demo message. This is just a demo message.",
                              maxLines: 2),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.edit),
      ),
    );
  }
}
