import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Myths extends StatefulWidget {
  @override
  _MythsState createState() => _MythsState();
}

class _MythsState extends State<Myths> {
  String myths = '';
  String reality = '';
  String myth2 = '';
  String reality2 = '';
  String myth3 = '';
  String reality3 = '';
  String myth4 = '';
  String reality4 = '';

  void mythsNepal() async {
    var result = await http.get('https://nepalcorona.info/api/v1/myths');
    var response = json.decode(result.body);
    // print(myths.body);
    // print(quick);
    setState(() {
      myths = response['data'][0]['myth_np'].toString();
      reality = response['data'][0]['reality_np'];
      myth2 = response['data'][1]['myth_np'];
      reality2 = response['data'][1]['reality_np'];
      myth3 = response['data'][2]['myth_np'];
      reality3 = response['data'][2]['reality_np'];
      myth4 = response['data'][3]['myth_np'];
      reality4 = response['data'][3]['reality_np'];
    });
  }

  @override
  void initState() {
    mythsNepal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                '1.$myths',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                'REALITY.\n$reality',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
                height: 250,
                width: 250,
                child: Image(
                  image: NetworkImage(
                      'https://assets.rumsan.com/askbhunte/assets/coronavirus-myths-43.jpg.jpg'),
                )),
            Divider(
              color: Colors.black,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                '2.$myth2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                'Reality.$reality2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              height: 250,
              width: 350,
              child: Image(
                image: NetworkImage(
                    'https://assets.rumsan.com/askbhunte/assets/coronavirus-myths-42.jpg.jpg'),
              ),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                '3.$myth3',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                'Reality. \n$reality3',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              height: 250,
              width: 350,
              child: Image(
                image: NetworkImage(
                    'https://assets.rumsan.com/askbhunte/assets/coronavirus-myths-40.jpg'),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                '4. $myth4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Text(
                'Reality. \n$reality4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            Container(
              height: 250,
              width: 350,
              child: Image(
                image: NetworkImage(
                    'https://assets.rumsan.com/askbhunte/assets/coronavirus-myths-36.jpg'),
              ),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
