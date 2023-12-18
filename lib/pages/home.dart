import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/location'); //navigate to home screen to location screen.
              },
              icon: Icon(
                Icons.add_location_alt_sharp,
                color: Colors.black,
              ),
              label: Text(
                'Choose a location',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ))
        ],
      ),
    );
  }
}
