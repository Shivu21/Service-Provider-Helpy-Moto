import 'package:flutter/material.dart';

class CarIssueCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String carModel;
  final String issue;

  const CarIssueCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.carModel,
    required this.issue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SizedBox(
                height: 150,
                width: 75,
                child: ClipOval(
                  child: Image.network(imageUrl,
                      fit: BoxFit.cover //add fit for image
                      ),
                ),
              ),
              title: Text(name),
              subtitle: Text(carModel),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    issue,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
