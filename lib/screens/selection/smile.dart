import 'package:flutter/material.dart';

class Smile extends StatelessWidget {

  final bool happy;

  const Smile({Key key, this.happy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0,40.0,16.0,16.0),
        child: happy ? Image.asset("assets/happy.png",) : Image.asset("assets/sad.png")
      ),
    );
  }
}