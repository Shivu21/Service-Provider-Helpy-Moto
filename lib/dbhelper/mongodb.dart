import 'dart:developer';
import 'package:ServiceProviderApp/dbhelper/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, ticketsCollection;

  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    ticketsCollection = db.collection(TICKETS_COLLECTION);
  }

  static Future<List<Map<String, dynamic>>> getdata() async {
    final arrData = await ticketsCollection.find().toList();
    return arrData;
  }

  static Future<String> insert(MongoDbModel data) async {
    try {
      var result = await ticketsCollection.insertOne(data.toJson());
      if (result.isSuccess) {
        return "Data Inserted";
      } else {
        return "Something went wrong while inserting data.";
      }
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}

class MongoDbModel {
  final String customerName;
  final String vechicleName;
  final String query;

  MongoDbModel({
    required this.customerName,
    required this.vechicleName,
    required this.query,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': customerName,
      'age': vechicleName,
      'phone': query,
    };
  }
}
