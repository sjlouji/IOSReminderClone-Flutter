import 'package:flutter/material.dart';
import 'package:iosreminder_flutter/Data/Reminder.dart';
import 'package:iosreminder_flutter/Screens/Home.dart';
import 'package:iosreminder_flutter/Widget/Reminder.dart';

void main() {
  runApp(ListWidget());
}

class ListWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListWidgetPage();
  }
}

class ListWidgetPage extends StatefulWidget {
  ListWidgetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidgetPage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('My List', style: TextStyle(color: Colors.black, fontSize: 29),),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: ListView.builder(
                itemCount: reminderList.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: kFloatingActionButtonMargin + 48),
                itemBuilder: (context, index){
                  return ReminderWidget(rem: reminderList[index],);
                }
            ),
          ),
        ],
      ),
    );
  }
}
