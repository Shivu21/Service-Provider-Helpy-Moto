import 'package:flutter/material.dart';

class OngoingRequestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 160,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: GestureDetector(
                  onTap: () {
                    // Add your code for handling tap here
                  },
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Expanded(
                            child: ClipOval(
                              child: Image.network(
                                'https://source.unsplash.com/50x50/?portrait',
                                height: 180,
                              ),
                            ),
                          ),
                          title: Text('Pawan'),
                          subtitle: Text('Audi Car'),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Cleaning',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Expanded(
                          child: ClipOval(
                            child: Image.network(
                              'https://source.unsplash.com/50x50/?portrait',
                              height: 180,
                            ),
                          ),
                        ),
                        title: Text('Avinav Vyas'),
                        subtitle: Text('Harrior Car'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Text(
                          'Engine Problem',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
