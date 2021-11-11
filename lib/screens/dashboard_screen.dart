import 'package:coinedone_machien_test/components/button.dart';
import 'package:coinedone_machien_test/components/chart.dart';
import 'package:coinedone_machien_test/components/free_time_indicator.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  var data;
  Dashboard({this.data});
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int? totaltime;
  var updatedData;
  int? usedTime;
  var maxTime;
  var phoneuse;
  var lapuse;
  int? totalhours;
  int? totalminute;
  int? maxhours;
  int? maxminutes;
  int? usehours;
  int? useminutes;
  int? phonehours;
  int? phoneminutes;
  int? laphours;
  int? lapminutes;
  int? studyTime;
  int? classtime;
  int? freetime;
  int? studyhours;
  int? studyminutes;
  int? classhours;
  int? classminutes;
  int? frehours;
  int? freeminutes;

  @override
  void initState() {
    super.initState();
    var time_data = widget.data;
    if (widget.data != null) {
      totaltime =
          int.tryParse(widget.data[0]['chartData']['totalTime']['total']);
      if (totaltime! > 60) {
        totalhours = (totaltime! / 60).toInt();
        totalminute = totaltime! % 60;
      }
      usedTime = (int.tryParse(
              widget.data[0]['deviceUsage']['freeTime']['mobile'])! +
          int.tryParse(widget.data[0]['deviceUsage']['freeTime']['laptop'])!);

      if (usedTime! > 60) {
        usehours = (usedTime! / 60).toInt();
        useminutes = usedTime! % 60;
      } else {
        useminutes = usedTime;
      }

      maxTime = int.tryParse(widget.data[0]['freeTimeMaxUsage']);
      if (maxTime! > 60) {
        maxhours = (maxTime! / 60).toInt();
        maxminutes = maxTime! % 60;
      } else {
        maxminutes = maxTime;
      }
      phoneuse =
          int.tryParse(widget.data[0]['deviceUsage']['totalTime']['mobile']);
      if (phoneuse! > 60) {
        phonehours = (totaltime! / 60).toInt();
        phoneminutes = totaltime! % 60;
      } else {
        phoneminutes = phoneuse;
      }
      lapuse =
          int.tryParse(widget.data[0]['deviceUsage']['totalTime']['laptop']);
      if (lapuse! > 60) {
        laphours = (totaltime! / 60).toInt();
        lapminutes = totaltime! % 60;
      } else {
        lapminutes = lapuse;
      }
      studyTime =
          int.tryParse(widget.data[0]['chartData']['studyTime']['total']);

      if (studyTime! > 60) {
        studyhours = (studyTime! / 60).toInt();
        studyminutes = studyTime! % 60;
      } else {
        studyminutes = studyTime;
      }
      classtime =
          int.tryParse(widget.data[0]['chartData']['classTime']['total']);

      if (classtime! > 60) {
        classhours = (classtime! / 60).toInt();
        classminutes = classtime! % 60;
      } else {
        classminutes = classtime;
      }
      freetime = int.tryParse(widget.data[0]['chartData']['freeTime']['total']);

      if (freetime! > 60) {
        frehours = (freetime! / 60).toInt();
        freeminutes = freetime! % 60;
      } else {
        freeminutes = freetime;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color(0xffFFFBA3),
          radius: 1,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Michael',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Text(
                'DashBoard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            chart(
              totalTime: '${totalhours.toString()} h ${totalminute.toString()}',
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .24,
                ),
                Text('data',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 45.0,
                ),
                Text('data',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 45.0,
                ),
                Text('data',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Free-time Usage',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Text('Used',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                ),
                Text('Max',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                usehours != null
                    ? Text('${usehours.toString()} h ${useminutes}',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                    : Text('${useminutes} m',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                ),
                maxhours != null
                    ? Text('${maxhours} h ${maxminutes.toString()} m',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                    : Text('${maxminutes.toString()} m',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            FreeTimeIndicator(),
            SizedBox(
              height: 20.0,
            ),
            Button(
              side: BorderSide(color: Colors.blue),
              text: '          Extend Free-time         ',
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(
              text: 'Change Time Restrictions',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'By Devices',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android_outlined,
                  color: Colors.black,
                  size: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Column(
                  children: [
                    Text(
                      "Adi's Phone",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    phonehours != null
                        ? Text(
                            '${phonehours.toString()} h $phoneminutes m',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        : Text(
                            '$phoneminutes m',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.laptop_mac,
                  color: Colors.black,
                  size: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Column(
                  children: [
                    Text(
                      "Adi's Laptop",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    laphours != null
                        ? Text(
                            '${laphours.toString()} h $lapminutes m',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                        : Text(
                            '${laphours.toString()} m',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(
              text: 'See All Devices',
            ),
          ],
        ),
      ),
    );
  }
}
