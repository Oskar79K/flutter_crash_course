import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_networth_app/data/data.dart';
import 'package:flutter_networth_app/models/spelare.dart';
import 'package:flutter_networth_app/screens/runda.dart';
import 'package:flutter_networth_app/screens/speltips.dart';
import 'package:flutter_networth_app/widgets/add_player.dart';

class StartaRunda extends StatefulWidget {
  @override
  _NetworthPageState createState() => _NetworthPageState();
}

class _NetworthPageState extends State<StartaRunda> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final TextEditingController addPlayer = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lägg till spelare"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
            child: Text(
              "Här kan du lägga till alla spelare i rundan. Du kan även dra-och-släppa om du vill ändra ordningen. Lycka till!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: TextFormField(
              controller: addPlayer,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Skriv in nästa spelares namn",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      users.add(
                        User(name: addPlayer.text),
                      );
                    });
                  },
                  icon: Icon(
                    Icons.add_box_rounded,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: new ReorderableListView.builder(
                itemCount: users.length,
                onReorder: (oldIndex, newIndex) => setState(() {
                      final index =
                          newIndex > oldIndex ? newIndex - 1 : newIndex;
                      final user = users.removeAt(oldIndex);
                      users.insert(index, user);
                    }),
                itemBuilder: (context, index) {
                  final user = users[index];
                  return buildPlayer(index, user);
                }),
          ),
          SizedBox(height: 20),
          Container(
            child: TextButton(
              child: Text(
                "Starta runda!",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Runda2(users: users),
                  fullscreenDialog: false,
                ),
              ),
            ),
            color: Colors.yellow,
            height: 60,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }

  Widget buildPlayer(int index, User user) => ListTile(
        key: ValueKey(user),
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => edit(index),
                  child: Text(
                    user.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () => remove(index),
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).primaryColor,
                  ),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      );

  void remove(int index) => setState(() => users.removeAt(index));

  void edit(int index) => showDialog(
        context: context,
        builder: (context) {
          final user = users[index];

          return AlertDialog(
            backgroundColor: Colors.white,
            content: TextFormField(
              style: TextStyle(color: Colors.black),
              autofocus: true,
              initialValue: user.name,
              onFieldSubmitted: (_) => Navigator.of(context).pop(),
              onChanged: (name) => setState(() => user.name = name),
            ),
          );
        },
      );
}
