import 'package:mongo_dart/mongo_dart.dart';

class menuItem {
  final ObjectId id;
  final String itemName;
  final String desc;
  final int price;

  const menuItem(
      {required this.id,
      required this.itemName,
      required this.desc,
      required this.price});

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'itemName': itemName,
      'desc': desc,
      'price': price,
    };
  }

  menuItem.fromMap(Map<String, dynamic> map)
      : itemName = map['itemName'],
        id = map['_id'],
        price = map['price'],
        desc = map['desc'];
}
