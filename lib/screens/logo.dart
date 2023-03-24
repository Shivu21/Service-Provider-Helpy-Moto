import 'package:flutter/material.dart';
import 'package:ServiceProviderApp/drawer_screens/drawer_screen.dart';
import 'package:ServiceProviderApp/screens/phone.dart';
import 'signup_form.dart';

class Logo extends StatefulWidget {
  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/assets/images/logo.png'),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text('Lets Go!'),
              onPressed: () {
                // Handle button press
                // Perform login
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
