import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setTime() async {
    World_time object =
        World_time('singapoore', 'singapoore.png', 'Asia/Singapore');
    await object.getTime();

    Navigator.pushReplacementNamed(context, '/', arguments: {
      'location': object.location,
      'flag': object.flag,
      'time': object.time
    });
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefafa),
      body: Center(
        child: SpinKitRing(
          color: Color(0xffef870f),
          size: 90.0,
        ),
      ),
    );
  }
}
