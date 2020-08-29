import 'package:flutter/material.dart';
import 'package:iosreminder_flutter/Screens/Home.dart';

void main() {
  runApp(StatsWidget());
}

class StatsWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatsWidgetPage();
  }
}

class StatsWidgetPage extends StatefulWidget {
  StatsWidgetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StatsWidgetState createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidgetPage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 110,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.calendar_today, color: Colors.white,size: 20,),
                          ),
                          Container(
                            child: Text('32', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text('Today', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 20),),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 110,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.access_time, color: Colors.white,size: 25,),
                          ),
                          Container(
                            child: Text('102', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text('Scheduled', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 20),),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(),
            height: 110,
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.folder_outlined, color: Colors.white,size: 25,),
                      ),
                      Container(
                        child: Text('353', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 12),
                  child: Text('All', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 20),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
