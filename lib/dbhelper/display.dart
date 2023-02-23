// import 'package:flutter/material.dart';
// import 'package:loginuicolors/dbhelper/mongodb.dart';
// import 'package:loginuicolors/dbhelper/mongodbmodel.dart';

// class MongoDBDisplay extends StatefulWidget {
//   const MongoDBDisplay({Key? key}) : super(key: key);

//   @override
//   State<MongoDBDisplay> createState() => _MongoDBDisplayState();
// }

// class _MongoDBDisplayState extends State<MongoDBDisplay> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: FutureBuilder(
//             future: MongoDatabase.getdata(),
//             builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else {
//                 if (snapshot.hasData) {
//                   var totalData = snapshot.data!.length;
//                   print("Total Data" + totalData.toString());
//                   return ListView.builder(
//                       itemCount: snapshot.data!.length,
//                       itemBuilder: (context, index) {
//                         return displayCard(
//                           MongoDbModel.fromJson(snapshot.data![index]),
//                         );
//                       }
//                   );
//                 } else {
//                   return Center(
//                     child: Text("No Data Available."),
//                   );
//                 }
//               }
//             }),
//       )),
//     );
//   }

//   Widget displayCard(MongoDbModel data) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             Text("${data.customerName}"),
//             SizedBox(
//               height: 5,
//             ),
//             Text("${data.vechicleName}"),
//             SizedBox(
//               height: 5,
//             ),
//             Text("${data.query}"),
//             SizedBox(
//               height: 5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
