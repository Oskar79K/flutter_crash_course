import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_networth_app/screens/speltips.dart';

class StartaRunda extends StatefulWidget {
  @override
  _NetworthPageState createState() => _NetworthPageState();
}

class _NetworthPageState extends State<StartaRunda> {
  List<String> litems = [];
  final TextEditingController eCtrl = new TextEditingController();

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
        children: <Widget>[
          new TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              litems.add(text);
              eCtrl.clear();
              setState(() {});
            },
          ),
          new Expanded(
            child: new ListView.builder(
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return new Text(litems[Index]);
                }),
          ),
          ElevatedButton(
            child: Text("Starta spel"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Speltips()),
              );
            },
          ),
        ],
      ),
    );

    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Text(
    //       'Här startar man rundan',
    //       style: Theme.of(context).textTheme.headline5,
    //       textAlign: TextAlign.center,
    //     ),
    //     Card(
    //       child: Container(
    //         color: Colors.white,
    //         height: 60,
    //         width: width * 0.8,
    //       ),
    //     ),
    //   ],
    // ),
  }
}
