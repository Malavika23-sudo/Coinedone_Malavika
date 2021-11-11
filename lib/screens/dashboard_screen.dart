import 'package:coinedone_machien_test/components/button.dart';
import 'package:coinedone_machien_test/components/chart.dart';
import 'package:coinedone_machien_test/components/free_time_indicator.dart';
import 'package:coinedone_machien_test/services/network.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  var data;
  Dashboard({this.data});
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var totaltime;
  var updatedData;
  @override
  void initState() {
    super.initState();
    var time_data = widget.data;
    print('dummy Data:---------=> $time_data ');
    widget.data != null
        ? totaltime = widget.data[0]['chartData']['totalTime']['total']
        : totaltime = 0;
  }

  void updateUi() async {
    print('=====================UpdateUi====================');
    updatedData = await Networking().getTimeDatas();
    print('updateData value: $updatedData');
    setState(() {
      updatedData != null
          ? totaltime = widget.data[0]['chartData']['totalTime']['total']
          : totaltime = 0;
    });
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
            chart(),
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
                    Text(
                      "40 m",
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
                    Text(
                      "40 m",
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
