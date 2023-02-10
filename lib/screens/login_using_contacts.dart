// import 'package:flutter/material.dart';
// import 'package:flutter_otp/flutter_otp.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_sms/flutter_sms.dart';


// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late String _phoneNumber;
//   late String _otp;
//   FacebookLogin _facebookLogin = FacebookLogin();
//   GoogleSignIn _googleSignIn = GoogleSignIn();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           // Mobile number OTP login
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: InputDecoration(hintText: "Enter Phone Number"),
//               onChanged: (value) {
//                 setState(() {
//                   _phoneNumber = value;
//                 });
//               },
//             ),
//           ),
//           // ElevatedButton(
//           //   child: Text("Send OTP"),
//           //   onPressed: () {
//           //     FlutterOtp.verifyPhoneNumber(_phoneNumber);
//           //   },
//           // ),
//           // Padding(
//           //   padding: const EdgeInsets.all(16.0),
//           //   child: TextField(
//           //     decoration: InputDecoration(hintText: "Enter OTP"),
//           //     onChanged: (value) {
//           //       setState(() {
//           //         _otp = value;
//           //       });
//           //     },
//           //   ),
//           // ),
//           // ElevatedButton(
//           //   child: Text("Verify OTP"),
//           //   onPressed: () {
//           //     FlutterOtp.signInWithOTP(_otp);
//           //   },
//           // ),
//           // // Facebook login
//           // ElevatedButton(
//           //   child: Text("Login with Facebook"),
//           //   onPressed: () async {
//           //     final result = await _facebookLogin.logInWithReadPermissions(['email']);
//           //     if (result.status == FacebookLoginStatus.loggedIn) {
//           //       // Handle successful login here
//           //     }
//           //   },
//           // ),
//           // Google login
//           ElevatedButton(
//             child: Text("Login with Google"),
//             onPressed: () async {
//               final googleUser = await _googleSignIn.signIn();
//               if (googleUser != null) {
//                 // Handle successful login here
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
