import 'package:flutter/material.dart';

class ServiceRequestNotification extends StatelessWidget {
  final String name;
  final String location;
  final String description;
  final double distance;

  const ServiceRequestNotification({
    required Key key,
    required this.name,
    required this.location,
    required this.description,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 328,
        height: 389,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 0),
                  blurRadius: 4)
            ],
            color: Color.fromRGBO(234, 234, 234, 1)),
        child: Column(
          children: <Widget>[
            _buildHeader(name, location, distance),
            _buildInfo(),
            _buildDescription(description),
            _buildButton(),
          ],
        ));
  }

  Widget _buildHeader(String name, String location, double distance) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
                color: Color.fromRGBO(196, 196, 196, 1),
                borderRadius: BorderRadius.circular(56)),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Museo Sans 700',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1.5)),
              SizedBox(height: 8),
              Text(location,
                  style: TextStyle(
                      color: Color.fromRGBO(79, 79, 79, 1),
                      fontFamily: 'Museo Sans 700',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      height: 1.5)),
            ],
          ),
          Spacer(),
          Text(distance.toString() + 'km',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Museo Sans 700',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1.5)),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color.fromRGBO(79, 79, 79, 1), width: 1)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Add your widgets here
          ],
        ),
      ),
    );
  }

  Widget _buildDescription(String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        description,
        style: TextStyle(
            color: Color.fromRGBO(79, 79, 79, 1),
            fontFamily: 'Museo Sans',
            fontSize: 16,
            letterSpacing: 0.10000000149011612,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
    );
  }

   Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        onPressed: () {},
        child: Text('Accept'),
      ),
    );
  }
}
