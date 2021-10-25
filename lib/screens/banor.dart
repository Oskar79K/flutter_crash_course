import 'package:flutter/material.dart';

class Banor extends StatelessWidget {
  final String laneNumber;

  const Banor({
    Key? key,
    required this.laneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.all(8),
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            laneNumber,
            style: TextStyle(color: Colors.black, fontSize: 24),
          )),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: laneNumber,
            ),
          ),
        ],
      ),
    );
  }
}
