import 'package:flutter/material.dart';

class UserHelpSupport extends StatelessWidget {
  const UserHelpSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Help & Support', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "User Information:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Platform obtains the information you provide when you register/subscribe for the Services or products. When you register with us, you provide us the following information your name, age, email address, location, phone number; transaction-related information, such as when you make purchases, respond to any offers, or download or use Applications from us; information you provide us when you contact us for help; information you enter into our system when using the Application/Services/products; the information obtained through GPS or other means, such as the geographical location collectively, ‘Information’.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "HelpyMoto collects information about you and your use of the Platform, and the devices used by you to access the Platform including;",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Your activity on the platform, which would include your search history, your search inputs, pages viewed on the Platform, statistics on page views and the URLs with time stamps; device information including your IP address, and identifiers such as browser setting type, operating system, network information and device type settings including but not limited to crash reports, system activity, the date, time and referral URL of your request.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "In case any individual under the age of 18 years of age is utilizing the Platform, such usage will be undertaken only with the strict supervision and approval of a parent or a legal guardian or any other person having parental responsibility for the child, and HelpyMoto will not be responsible for the same at any time and in any manner whatsoever.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Need more help?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to FAQ Page
                      },
                      child: Text("FAQs"),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // Call mobile number
                      },
                      child: Text("Call Us"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'lib/assets/images/twitter.png',
                      width: screenWidth *
                          0.1, // set image width as 10% of screen width
                      height: screenHeight *
                          0.05, // set image height as 5% of screen height
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      'lib/assets/images/facebook.png',
                      width: screenWidth * 0.1,
                      height: screenHeight * 0.05,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      'lib/assets/images/instagram.png',
                      width: screenWidth * 0.1,
                      height: screenHeight * 0.05,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
