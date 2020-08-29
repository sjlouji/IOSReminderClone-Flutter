import 'package:flutter/material.dart';
import 'package:iosreminder_flutter/Screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      body: HomeScreen(),
      floatingActionButton: Material(
        child: Container(
          color: Colors.white,
          width: 200,
          height: 60,
          child: FlatButton(
            child: Text('Add List', style: TextStyle(color: Colors.blue, fontSize: 16),textAlign: TextAlign.end,),
          ),
        ),
      ),
    );
  }
}
