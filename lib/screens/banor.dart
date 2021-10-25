import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Banor extends StatefulWidget {
  final String laneNumber;
  String score = "0";

  Banor({Key? key, required this.laneNumber, required this.score})
      : super(key: key);

  @override
  State<Banor> createState() => _BanorState();
}

class _BanorState extends State<Banor> {
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
      margin: EdgeInsets.all(4),
      height: 80,
      width: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            widget.laneNumber,
            style: TextStyle(color: Colors.black, fontSize: 22),
          )),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffeeeeee), width: 0.0),
              color: Colors.white12,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white10,
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () => showScoreChange(context),
              child: Text(widget.score),
            ),
            // child: Center(
            //   child: TextField(
            //     style: TextStyle(color: Colors.black),
            //     decoration: InputDecoration(
            //       hintText: "0",
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }

  void showScoreChange(BuildContext context) => showCupertinoDialog(
      context: context,
      builder: (context) {
        final score = "0";

        return AlertDialog(
          backgroundColor: Colors.white,
          content: TextFormField(
            keyboardType: TextInputType.number,
            //controller: TextEditingController.fromValue(widget.score),
            style: TextStyle(color: Colors.black),
            autofocus: true,
            initialValue: widget.score,
            onFieldSubmitted: (_) => Navigator.of(context).pop(),
            onChanged: (score) => setState(() => widget.score = score),
          ),
        );
      });
}
