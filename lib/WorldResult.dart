import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WorldResult extends StatefulWidget {
  @override
  _WorldResultState createState() => _WorldResultState();
}

class _WorldResultState extends State<WorldResult> {
  String totalCases = '';
  String newCases = '';
  String totalDeath = '';
  String activeCases = '';
  String totalRecover = '';
  String criticalCases = '';
  String test = '';
  String date = '';

  void worldCovid() async {
    var result3 = await http.get('https://nepalcorona.info/api/v1/data/world');
    var response3 = json.decode(result3.body);
    print(response3[0]['totalCases'].toString());
    setState(() {
      totalCases = response3[0]['totalCases'].toString();
      newCases = response3[0]['newCases'].toString();
      totalDeath = response3[0]['totalDeaths'].toString();
      activeCases = response3[0]['activeCases'].toString();
      totalRecover = response3[0]['totalRecovered'].toString();
      criticalCases = response3[0]['criticalCases'].toString();
      test = response3[0]['tests'].toString();
      date = response3[0]['updated'];
    });
  }

  @override
  void initState() {
    worldCovid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade200,
        title: Text('World Record'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/env.png'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/globa.jpg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Total Cases\n$totalCases',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/new.jpg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'New Cases\n$newCases',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/1.jpeg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Total Death\n$totalDeath',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/active.jpg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Active Cases\n$activeCases',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 30,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/coro.jpg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Total Recover\n$totalRecover',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/cri.jpg'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Critical Cases\n$criticalCases',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: AssetImage('images/worldpng/test.png'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        )),
                    Container(
                      height: 100,
                      width: 200,
                      child: Text(
                        'Total Test\n$test',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Text('UpDated In $date'),
            ],
          ),
        ),
      ),
    );
  }
}
