import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/dbhelper/mongodb.dart';
import 'package:loginuicolors/screens/logo.dart';
import 'package:loginuicolors/screens/onboarding_page.dart';
import 'package:loginuicolors/screens/supplier.dart';
import 'screens/drawer_screen.dart';
import 'screens/login.dart';
import 'screens/phone.dart';
import 'screens/ragister.dart';
import 'screens/splash_screen.dart';
import 'screens/status.dart';
import 'screens/verify.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await MongoDatabase.connect();
  await Firebase.initializeApp();
  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Helpy Moto',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      // 'display': (context) => MongoDBDisplay(),
      'logo': (context) => Logo(),
      'drawer_screen': (context) => DrawerScreen(),
      'onboarding_page': (context) => Onboarding_page(),
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'status': (context) => Status(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'supplier': (context) => Supplier(),
    },
  ));
}

