import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInAppBar extends StatefulWidget {
  const SignInAppBar({super.key});

  @override
  State<SignInAppBar> createState() => _SignInAppBarState();
}

class _SignInAppBarState extends State<SignInAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: <Widget>[
          const Icon(Icons.arrow_back_ios_new),
          SizedBox(
            width: (MediaQuery.of(context).size.width) / 3.3,
          ),
          const Text(
            "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
