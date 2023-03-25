// child: Card(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(20.0),
//   ),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           CircleAvatar(
//             radius: 25,
//             backgroundImage:
//                 NetworkImage(userDetails.image),
//           ),
//           SizedBox(width: 15),
//           Expanded(
//             child: Column(
//               crossAxisAlignment:
//                   CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   userDetails.name,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   userDetails.subtitle,
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             crossAxisAlignment:
//                 CrossAxisAlignment.end,
//             children: [
//               Text(userDetails.vehicleName),
//               Text(userDetails.distance),
//             ],
//           ),
//         ],
//       ),
//       SizedBox(height: 10),
//       Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: 15.0),
//         child: Text(userDetails.description),
//       ),
//       SizedBox(height: 10),
//       Divider(),
//       Container(
//         height: 120,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Card(
//               child: Container(
//                 width: 120,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: NetworkImage(
//                       'https://picsum.photos/200?random=$index',
//                     ),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceAround,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Message'),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Cancel'),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.red),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Confirm'),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.green),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     ],
//   ),
// ),
