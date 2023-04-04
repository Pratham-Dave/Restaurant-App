import 'package:mongo_dart/mongo_dart.dart';
import 'package:restro_app/database/constant.dart';
import 'package:restro_app/models/menu_model.dart';

class MongoDatabase {
  static var db, userCollection;

  //Connection to the database
  static connect() async {
    final db = await Db.create(MONGO_CONN_URL);
    await db.open();
    // ignore: unused_local_variable
    userCollection = db.collection(DATA_COLLECTION);
  }

  // Create
  void insert(menuItem menu) async {
    await userCollection.insertAll([menu.toMap()]);
  }

  // Read
  static Future<List<Map<String, dynamic>>> getData() async {
    try {
      final data = await userCollection.find().toList();
      return data;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      // ignore: null_argument_to_non_null_type
      return Future.value();
    }
  }

  // Update
  static update(menuItem menu) async {
    var u = await userCollection.findOne({"_id": menu.id});
    u["itemName"] = menu.itemName;
    u["desc"] = menu.desc;
    u["price"] = menu.price;
    await userCollection.save(u);
  }

  // Delete
  static delete(menuItem menu) async {
    await userCollection.remove(where.id(menu.id));
  }
}
