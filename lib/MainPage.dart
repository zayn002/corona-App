import 'package:corona/TotalCasesInNepal.dart';
import 'package:corona/WorldResult.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Hospitals.dart';
import 'Myths/Myths.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/banner.png'),
            Text(
              'The Total Result Of Covid-19 Cases',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TotalCases()),
                );
              },
              child: Text(
                'Click here for get the total result of covid-19 In Nepal',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
              color: Colors.white,
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Some Myth In Nepal',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_sharp),
                        color: Colors.white,
                        iconSize: 28,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Myths()),
                          );
                        }),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorldResult()),
                  );
                },
                color: Colors.blue,
                child: Text(
                  'Click here for get world covid-19 result',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospital()),
                  );
                },
                color: Colors.blue,
                child: Text('hospitals',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
