import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_networth_app/data/data.dart';
import 'package:flutter_networth_app/models/spelare.dart';

class Runda2 extends StatefulWidget {
  List<User> users;
  Runda2({Key? key, required this.users}) : super(key: key);

  @override
  State<Runda2> createState() => _Runda2State();
}

class _Runda2State extends State<Runda2> {
  final _myController = TextEditingController.fromValue(
    TextEditingValue(
      text: "",
    ),
  );

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Runda"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: widget.users.length,
          itemBuilder: (context, index) {
            final user = widget.users[index];
            return buildScorecard(index, user);
          }),
    );
  }

  Widget buildScorecard(int index, User user) => ListTile(
        key: ValueKey(user),
        title: Container(
          width: 400,
          height: 200,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        user.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Text(
                      _myController.text,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("1"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "1",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("2"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "2",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana3"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "3",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana4"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "4",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana5"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "5",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana6"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "6",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana7"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "7",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana8"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "8",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 0.0),
                          child: TextField(
                            controller: _myController,
                            key: Key("Bana9"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "9",
                                border: InputBorder.none,
                                focusColor: Colors.grey.shade400),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade200,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Totalt",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  // dynamic sumController() {
  //   setState(() {
  //     int sum = int.parse(bana1.text) + int.parse(bana2.text);
  //     result = sum.toString();
  //   });
  //   throw 0;
  // }
}
