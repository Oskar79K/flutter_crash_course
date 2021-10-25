import 'package:flutter/material.dart';
import 'package:flutter_networth_app/models/spelare.dart';
import 'package:flutter_networth_app/screens/banor.dart';

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
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Banor(
                        laneNumber: "1",
                        score: _myController.text,
                      ),
                      Banor(laneNumber: "2", score: _myController.text),
                      Banor(laneNumber: "3", score: _myController.text),
                      Banor(laneNumber: "4", score: _myController.text),
                      Banor(laneNumber: "5", score: _myController.text),
                      Banor(laneNumber: "6", score: _myController.text),
                      Banor(laneNumber: "7", score: _myController.text),
                      Banor(laneNumber: "8", score: _myController.text),
                      Banor(laneNumber: "9", score: _myController.text),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
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
