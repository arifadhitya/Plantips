import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import './tips.dart' as tips;
import './shop.dart' as shop;
import './ask.dart' as ask;

void main() {
  runApp(new MaterialApp(
    title: "Plantips",
    home : new Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState(){
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    timeDilation:1;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Plantips"),
        backgroundColor: Colors.lightGreen,
        ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            )
          ],
        )
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new tips.Tips(),
          new shop.Shop(),
          new ask.Ask()
        ]),
        bottomNavigationBar: new Material(
          color: Colors.lightGreen,
          child: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.shopping_basket),),
              new Tab(icon: new Icon(Icons.chat),)
            ]
          )
        ),
    );
  }
}