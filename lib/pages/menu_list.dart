import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restro_app/database/database.dart';

class menuList extends StatefulWidget {
  const menuList({super.key});

  @override
  State<menuList> createState() => _menuListState();
}

class _menuListState extends State<menuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: MongoDatabase.getData(),
          builder: ((context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                var lengthOfData = snapshot.data.length;
                return Text(lengthOfData);
              } else {
                return const Center(
                  child: Text("No Data found."),
                );
              }
            }
          }),
        ),
      ),
    );
  }
}
