import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ServiceProviderApp/Main_Screen/sos_screen.dart';
import 'package:ServiceProviderApp/dbhelper/mongodb.dart';
import 'package:ServiceProviderApp/drawer_screens/help&support.dart';
import 'package:ServiceProviderApp/drawer_screens/licenses.dart';
import 'package:ServiceProviderApp/drawer_screens/privacy_screen.dart';
import 'package:ServiceProviderApp/screens/logo.dart';
import 'package:ServiceProviderApp/screens/signup_form.dart';
import 'package:ServiceProviderApp/utils/servicerequestnotification.dart';
import 'Login_Screen/login.dart';
import 'Login_Screen/verify.dart';
import 'Main_Screen/status.dart';
import 'drawer_screens/drawer_screen.dart';
import 'screens/onboarding_page.dart';
import 'screens/phone.dart';
import 'screens/ragister.dart';
import 'screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MongoDatabase.connect();
  await Firebase.initializeApp();
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null) {
      print(user.uid);
    }
  });
  Color brandColor = Color(0XFFff7373);
  runApp(DynamicColorBuilder(
      builder: (ColorScheme? LightDynamic, ColorScheme? dark) {
    ColorScheme lightColorScheme;
    ColorScheme darkColorScheme;

    if (LightDynamic != null && dark != null) {
      lightColorScheme = LightDynamic.harmonized().copyWith();
      lightColorScheme = lightColorScheme.copyWith(secondary: brandColor);
      darkColorScheme = dark.harmonized();
    } else {
      lightColorScheme = ColorScheme.fromSeed(seedColor: brandColor);
      darkColorScheme = ColorScheme.fromSeed(
        seedColor: brandColor,
        brightness: Brightness.dark,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Helpy Moto',
      theme: ThemeData(
          fontFamily: "font",
          useMaterial3: true,
          colorScheme: lightColorScheme),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        // 'display': (context) => MongoDBDisplay(),
        'logo': (context) => Logo(),
        'drawer_screen': (context) => DrawerScreen(),
        'phone': (context) => MyPhone(),
        'login': (context) => MyLogin(),
        'verify': (context) => MyVerify(),
        'signup_form': (context) => SignUpForm(),
        'sos_screen': (context) => SosScreen(),
        'onboarding_page': (context) => Onboarding_page(),
        'servicerequestnotification': (context) => ServiceRequestNotification(
              description: 'Shivam',
              distance: 20,
              key: Key("Shivu"),
              location: 'Agra',
              name: 'Rohit',
            ),
        'status': (context) => Status(),
        'register': (context) => MyRegister(),
        'privacy': (context) => PrivacyScreen(),
        'help&support': (context) => Help_Support(),
        'licenses': (context) => Licenses(),
      },
    );
  }));
}
