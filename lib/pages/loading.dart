import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = '';

  void setTime() async {
    World_time object =
        World_time('singapoore', 'singapoore.png', 'Asia/Singapore');
    await object.getTime();
    print(object.time);

    setState(() {
      time = object.time;
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
      body: Center(child: Text('$time')),
    );
  }
}
