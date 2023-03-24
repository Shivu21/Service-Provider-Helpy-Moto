import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          // add back button
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text("Privacy Policies", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // scroll entire body
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text("User Information:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                "The Platform obtains the information you provide when you register or subscribe for the Services or products. "
                "When you register with us, you provide us the following information - your name, age, email address, location, phone number; "
                "transaction-related information, such as when you make purchases, respond to any offers, or download or use Applications from us; "
                "information you provide us when you contact us for help; information you enter into our system when using the Application/Services/products; "
                "the information obtained through GPS or other means, such as the geographical location collectively, ‘Information’.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text("Device Information:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                "HelpyMoto collects information about you and your use of the Platform, and the devices used by you to access the Platform including; "
                "your activity on the platform, which would include your search history, your search inputs, pages viewed on the Platform, statistics on page views "
                "and the URLs with time stamps; device information including your IP address, and identifiers such as browser setting type, operating system, network "
                "information and device type settings including but not limited to crash reports, system activity, the date, time and referral URL of your request.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "In case any individual under the age of 18 years of age is utilizing the Platform, such usage will be undertaken only with the strict supervision "
                "and approval of a parent or a legal guardian or any other person having parental responsibility for the child, and HelpyMoto will not be responsible "
                "for the same at any time and in any manner whatsoever.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
