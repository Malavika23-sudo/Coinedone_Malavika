import 'package:coinedone_machien_test/screens/dashboard_screen.dart';
import 'package:coinedone_machien_test/services/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getTimeData();
  }

  void getTimeData() async {
    var Data = await Networking().getTimeDatas();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Dashboard(
                  data: Data,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: SpinKitThreeInOut(
          color: Colors.green,
          size: 32.0,
        ),
      ),
    ));
  }
}
