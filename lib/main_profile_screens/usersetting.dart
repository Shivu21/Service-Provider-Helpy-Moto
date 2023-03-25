import 'package:flutter/material.dart';

class UserSetting extends StatefulWidget {
  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  bool _isNotificationsEnabled = true;
  double _notificationVolume = 0.5;
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final cardHeight = screenHeight * 0.15;
    final cardWidth = screenWidth * 0.9;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                height: cardHeight,
                width: cardWidth,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SwitchListTile(
                    title: Text('Notifications Enabled'),
                    value: _isNotificationsEnabled,
                    onChanged: (newValue) {
                      setState(() {
                        _isNotificationsEnabled = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                height: cardHeight,
                width: cardWidth,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text('Notification Volume'),
                    subtitle: Text('${(_notificationVolume * 100).toInt()}%'),
                    trailing: Slider(
                      value: _notificationVolume,
                      onChanged: (newValue) {
                        setState(() {
                          _notificationVolume = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                height: cardHeight,
                width: cardWidth,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SwitchListTile(
                    title: Text('Dark Mode'),
                    value: _isDarkModeEnabled,
                    onChanged: (newValue) {
                      setState(() {
                        _isDarkModeEnabled = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
    );
  }
}
