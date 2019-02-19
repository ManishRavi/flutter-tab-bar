import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Tab Bar",
      theme: ThemeData(primaryColor: Colors.green),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("TAB 1"),
                ),
                Tab(
                  child: Text("TAB 2"),
                ),
                Tab(
                  child: Text("TAB 3"),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Card(
                child: Center(
                  child: Text("This is Tab 1"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("This is Tab 2"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("This is Tab 3"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
