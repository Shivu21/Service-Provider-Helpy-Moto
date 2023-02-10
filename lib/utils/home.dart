import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // SizedBox(height: 10),
        ListTile(
          leading: Icon(
            Icons.location_on,
            color: Colors.blueAccent,
          ),
          title: Text('Delhi', style: TextStyle(color: Colors.blueAccent)),
          subtitle: Text('Cleaning Service'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Switch(value: true, onChanged: (value) {}),
              ElevatedButton(
                onPressed: () {
                  // Handle notification button press
                },
                child: Icon(Icons.notifications),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: StatusButton(
                  text: "Online",
                  onPressed: () {
                    // Handle online button press
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: StatusButton(
                  text: "Offline",
                  onPressed: () {
                    // Handle offline button press
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Center(
            child: Image.network(
              'https://i.stack.imgur.com/HILmr.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: null,
              child: Text(
                'Request Ongoing',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 50,
                          ),
                          title: Text('Santosh Kumar'),
                          subtitle: Text('Honda Car'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Engine Problem',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 50,
                          ),
                          title: Text('Pawan Kumar'),
                          subtitle: Text('Audi Car'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Engine Problem',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 50,
                          ),
                          title: Text('Amit Kumar'),
                          subtitle: Text('Harrior Car'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Engine Problem',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: null,
              child: Text(
                'Other Services',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Card(
                          child: Column(
                            children: [
                              Icon(
                                Icons.car_crash,
                                size: 100,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text('Towing Service'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Card(
                          child: Column(
                            children: [
                              Icon(
                                Icons.sos_rounded,
                                size: 100,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text('SOS'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Card(
                          child: Column(
                            children: [
                              Icon(
                                Icons.cleaning_services,
                                size: 100,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text('Deep Cleaning'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class StatusButton extends StatefulWidget {
  const StatusButton({required this.text, required this.onPressed});

  final Function onPressed;
  final String text;

  @override
  _StatusButtonState createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
  static late String selectedButton = ""; //initial value should be ""

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 170,
      child: MaterialButton(
        key: ValueKey(widget.text),
        onPressed: () {
          setState(() {
            selectedButton = widget.text;
          });
          widget.onPressed();
        },
        shape: StadiumBorder(),
        color: selectedButton == widget.text ? Colors.greenAccent : Colors.grey,
        textColor: Colors.white,
        child: Text(
          widget.text,
          style: TextStyle(),
        ),
      ),
    );
  }
}
