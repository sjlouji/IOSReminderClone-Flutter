import 'package:flutter/material.dart';
import 'package:iosreminder_flutter/Model/Reminder.dart';
import 'package:iosreminder_flutter/Screens/Home.dart';

void main() {
  runApp(ReminderWidget());
}

class ReminderWidget extends StatelessWidget {
  ReminderWidget({Key key, this.rem }) : super(key: key);

  Reminder rem;
  @override
  Widget build(BuildContext context) {
    return ReminderWidgetPage(rem: rem,);
  }
}

class ReminderWidgetPage extends StatefulWidget {
  ReminderWidgetPage({Key key, this.title, this.rem}) : super(key: key);

  final String title;
  Reminder rem;

  @override
  _ReminderWidgetState createState() => _ReminderWidgetState();
}

class _ReminderWidgetState extends State<ReminderWidgetPage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: getColor(widget.rem.tagColor)
                        ),
                        child: Icon(Icons.menu, color: Colors.white,)
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(widget.rem.ReminderName, style: TextStyle(color: Colors.black, fontSize: 25),),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.rem.numberofTodos),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


getColor(String clr){
  if(clr == 'red'){
    return Colors.red;
  }else if(clr == 'green'){
    return Colors.green;
  }else if(clr == 'yellow'){
    return Colors.yellow;
  }else if(clr == 'bluegrey'){
    return Colors.blueGrey;
  }else if(clr == 'green'){
    return Colors.green;
  }else{
    return Colors.orange;
  }


}