import 'package:flutter/material.dart';

class Licenses extends StatelessWidget {
  const Licenses({Key? key}) : super(key: key);

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
        title: Text(
          "Licenses",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Information:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  "The Platform obtains the information you provide when you register/subscribe for the Services or products. When you register with us, you provide us the following information your name, age, email address, location, phone number; transaction-related information, such as when you make purchases, respond to any offers, or download or use Applications from us; information you provide us when you contact us for help; information you enter into our system when using the Application/Services/products; the information obtained through GPS or other means, such as the geographical location collectively, ‘Information’."),
              SizedBox(height: 16.0),
              Text(
                  "HelpyMoto collects information about you and your use of the Platform, and the devices used by you to access the Platform including;  \nyour activity on the platform, which would include your search history, your search inputs, pages viewed on the Platform, statistics on page views and the URLs with time stamps; device information including your IP address, and identifiers such as browser setting type, operating system, network information and device type settings including but not limited to crash reports, system activity, the date, time and referral URL of your request."),
              SizedBox(height: 16.0),
              Text(
                  "In case any individual under the age of 18 years of age is utilizing the Platform, such usage will be undertaken only with the strict supervision and approval of a parent or a legal guardian or any other person having parental responsibility for the child, and HelpyMoto will not be responsible for the same at any time and in any manner whatsoever."),
              SizedBox(height: 32.0),
              Text(
                "FAQ’s:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "Visit our FAQ’s page: ",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                "Contact us:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text("Email Address: abc@example.com"),
              Text("Mobile Number: 1234567890"),
              SizedBox(height: 32.0),
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
      ),
    );
  }
}
