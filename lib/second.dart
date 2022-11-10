import 'package:flutter/material.dart';

class second extends StatefulWidget {

  String name;
  String nicname;
  var photo;
  String game;

  second(this.name, this.nicname, this.photo, this.game);




  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          Image.asset(widget.photo),
          Text(widget.name),
          Text(widget.nicname),
          Text(widget.game),

        ],
      ),
    );
  }
}
