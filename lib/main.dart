import 'package:flutter/material.dart';
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
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     title: 'Helpy Moto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      'home': (context) => Logo(),
      'logo': (context) => Logo(),
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'drawer_screen':(context) => DrawerScreen(),
      'onboarding_page':(context) => Onboarding_page(),
      'status': (context) => Status(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'supplier': (context) => Supplier(),
    },
  ));
}


// import 'package:flutter/material.dart';
// import 'package:loginuicolors/screens/drawer_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Zoom Drawer',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DrawerScreen(),
//     );
//   }
// }
