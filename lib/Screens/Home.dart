import 'package:flutter/material.dart';
import 'package:iosreminder_flutter/Widget/List.dart';
import 'package:iosreminder_flutter/Widget/Stats.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOS Reminder App Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        actions: [
          Expanded(
            child: InkWell(
              child: Container(
                padding: EdgeInsets.only(right: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Edit', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400,fontSize: 16),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          child: Column(
            children: <Widget>[
              Container(
                height: 70,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.settings_voice),
                              prefixIcon: Icon(Icons.search, color: Colors.grey,),
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
                  child: StatsWidget()
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
                child: ListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
