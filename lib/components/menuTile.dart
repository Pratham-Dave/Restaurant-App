// import 'package:flutter/material.dart';
// import 'package:restro_app/menu.dart';

// class MenuCard extends StatelessWidget {
//   const MenuCard(
//       {super.key,
//       required this.item,
//       required this.onTapEdit,
//       required this.onTapDelete});
//   final MenuItems item;
//   final Function onTapEdit, onTapDelete;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       child: ListTile(
//         leading: Icon(Icons.abc),
//         title: Text(item.itemName),
//         subtitle: Text(item.desc),
//         trailing: Column(
//           children: [
//             GestureDetector(
//               child: Icon(Icons.edit),
//               onTap: onTapEdit,
//             ),
//             GestureDetector(
//               child: Icon(Icons.delete),
//               onTap: onTapDelete,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
