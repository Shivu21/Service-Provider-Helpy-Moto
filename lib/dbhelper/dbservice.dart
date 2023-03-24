// import 'package:mongo_dart/mongo_dart.dart';

// class MongoService {
//   final db = Database('mongodb://localhost:27017/databaseName');

//   Future getData() async {
//     final coll = db.collection('collectionName');
//     var docs = await coll.find();
//     var items = [];
//     docs.forEach((doc) => {
//       items.add({
//         'title': doc['title'],
//         'subtitle': doc['subtitle'],
//         'problem':doc['problem']
//       })
//     });
//     return items; //this will return an array of item objects
//   }
// }
