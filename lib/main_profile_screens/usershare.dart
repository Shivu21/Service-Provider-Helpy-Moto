import 'package:flutter/material.dart';

class UserShareApp extends StatelessWidget {
  const UserShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.share,
            size: 50,
            color: Colors.blue,
          ),
          SizedBox(height: 20), // Add some spacing between the icon and message
          Text(
            'Get ready to share the app!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10), // Add some spacing between message and subtext
          Text(
            'This feature is coming soon!',
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
