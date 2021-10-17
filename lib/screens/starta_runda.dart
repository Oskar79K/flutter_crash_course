import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartaRunda extends StatefulWidget {
  @override
  _NetworthPageState createState() => _NetworthPageState();
}

class _NetworthPageState extends State<StartaRunda> {
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
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            height: height * 0.1,
            width: width * 0.9,
            child: Card(
              color: Colors.white,
              elevation: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StartaRunda(),
                fullscreenDialog: true,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, color: Colors.black),
                Text(
                  'Lägg till spelare',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffefae28),
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StartaRunda(),
                fullscreenDialog: true,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
                Text(
                  'Starta runda!',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),

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
    );
  }
}
