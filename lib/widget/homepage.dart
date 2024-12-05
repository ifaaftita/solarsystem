import 'package:flutter/material.dart';
import 'package:paso/planetCards/jupiter.dart';
import 'package:paso/planetCards/mars.dart';
import 'package:paso/planetCards/mercure.dart';
import 'package:paso/planetCards/neptune.dart';
import 'package:paso/planetCards/saturne.dart';
import 'package:paso/planetCards/solar_system.dart';
import 'package:paso/planetCards/terre.dart';
import 'package:paso/planetCards/uranus.dart';
import 'package:paso/planetCards/venus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                child: Text(
                  '',
                  //'النظام\nالشمسي'
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 565,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  Mercure(),
                  Venus(),
                  Terre(),
                  Mars(),
                  Jupiter(),
                  Saturne(),
                  Uranus(),
                  Neptune(),
                  SolarSystem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
