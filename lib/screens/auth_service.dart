import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<User?> loginWithOTP(String phoneNumber, String smsCode) async {
    try {
      // Use the verification ID and SMS code to authenticate the user
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: phoneNumber,
        smsCode: smsCode,
      );
      UserCredential result = await _auth.signInWithCredential(credential);
      User? user = result.user;

      // Save the user's authentication token to shared preferences
      await _prefs.then((prefs) {
        prefs.setString('authToken', user?.uid ?? '');
      });

      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();

    // Remove the user's authentication token from shared preferences
    await _prefs.then((prefs) {
      prefs.remove('authToken');
    });
  }

  Future<bool> isLoggedIn() async {
    // Check if the user's authentication token is present in shared preferences
    return await _prefs.then((prefs) {
      return prefs.containsKey('authToken');
    });
  }
}
