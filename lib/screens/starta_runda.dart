import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_networth_app/data/data.dart';
import 'package:flutter_networth_app/models/spelare.dart';
import 'package:flutter_networth_app/screens/speltips.dart';

class StartaRunda extends StatefulWidget {
  @override
  _NetworthPageState createState() => _NetworthPageState();
}

class _NetworthPageState extends State<StartaRunda> {
  List<User> spelare = [];

  void initState() {
    super.initState();

    spelare = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Här kan du lägga till alla spelare i rundan. Du kan även dra-och-släppa om du vill ändra ordningen. Lycka till!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("Lägg till spelare"),
          ),
          SizedBox(height: 20),
          Expanded(
            child: new ReorderableListView.builder(
                itemCount: spelare.length,
                onReorder: (oldIndex, newIndex) => setState(() {
                      final index =
                          newIndex > oldIndex ? newIndex - 1 : newIndex;
                      final user = spelare.removeAt(oldIndex);
                      spelare.insert(index, user);
                    }),
                itemBuilder: (context, index) {
                  final user = spelare[index];
                  return buildPlayer(index, user);
                }),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("Starta"),
          ),
        ],
      ),
    );
  }

  Widget buildPlayer(int index, User spelare) => ListTile(
        key: ValueKey(spelare),
        title: Container(
          width: 200,
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
                    spelare.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () => remove(index),
                  icon: Icon(Icons.close),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      );

  void remove(int index) => setState(() => spelare.removeAt(index));

  void edit(int index) => showDialog(
        context: context,
        builder: (context) {
          final user = spelare[index];

          return AlertDialog(
            content: TextFormField(
              initialValue: user.name,
              onFieldSubmitted: (_) => Navigator.of(context).pop(),
              onChanged: (name) => setState(() => user.name = name),
            ),
          );
        },
      );
}
