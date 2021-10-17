import 'package:flutter/material.dart';
import 'package:flutter_networth_app/screens/speltips.dart';
import 'package:flutter_networth_app/screens/starta_runda.dart';

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 48),
              Image.asset("assets/sbgk_250.png"),
              SizedBox(height: 28),
              Text(
                'Välkommen till Skoghalls Bangolfklubb!',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 102),
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
                child: Text(
                  'Starta runda',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
