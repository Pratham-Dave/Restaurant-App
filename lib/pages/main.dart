import 'package:flutter/material.dart';
import 'package:restro_app/pages/menu_list.dart';
import 'package:restro_app/components/appBar.dart';
import 'package:restro_app/database/database.dart';
import 'package:restro_app/pages/home.dart';
import 'package:restro_app/pages/login.dart';
import 'package:restro_app/pages/register.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

void main() async {
  // This ensures connection has been made to the database
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
