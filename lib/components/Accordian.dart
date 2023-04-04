import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Accordian extends StatefulWidget {
  final String name;
  final String description;

  const Accordian({super.key, required this.name, required this.description});

  @override
  State<Accordian> createState() => _AccordianState();
}

class _AccordianState extends State<Accordian> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.name),
            trailing: IconButton(
              icon: Icon(
                  _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
          ),
          _showContent
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(widget.description),
                )
              : Container()
        ],
      ),
    );
  }
}
