import 'package:flutter/material.dart';
import 'package:ServiceProviderApp/main_profile_screens/userhelp.dart';
import 'package:ServiceProviderApp/main_profile_screens/userprofile.dart';
import 'package:ServiceProviderApp/main_profile_screens/usersetting.dart';
import 'package:ServiceProviderApp/main_profile_screens/usershare.dart';
import 'package:ServiceProviderApp/main_profile_screens/userterms.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1615906655593-ad0386982a0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Mechanic Name( ID 8080)',
            style: TextStyle(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '4.9 user rating',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          // Icon(
          //   Icons.location_on,
          //   color: Colors.black,
          //   size: 30.0,
          // ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: (index == 0)
                          ? Icon(Icons.person)
                          : (index == 1)
                              ? Icon(Icons.settings)
                              : (index == 2)
                                  ? Icon(Icons.help_outline)
                                  : (index == 3)
                                      ? Icon(Icons.share)
                                      : Icon(Icons.description),
                      title: (index == 0)
                          ? Text('My Profile')
                          : (index == 1)
                              ? Text('Settings')
                              : (index == 2)
                                  ? Text('Help & Support')
                                  : (index == 3)
                                      ? Text('Share the app')
                                      : Text('Terms & Conditions'),
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserProfile()));
                        } else if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserSetting()));
                        } else if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserHelpSupport()));
                        } else if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserShareApp()));
                          // code to share the app
                        } else if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserTermsCondition()));
                          // code to show the Terms & Conditions
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          )),
        ],
      ),
    );
  }
}
