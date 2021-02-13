import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {

  String name = '';
  String address = '';
  String number = '';
  String name2 = '';
  String address2 = '';
  String number2 = '';
  String name3 = '';
  String address3 = '';
  String number3 = '';
  String name4 = '';
  String address4 = '';
  String number4 = '';

  void hospitals()async{
    var result = await http.get('https://nepalcorona.info/api/v1/hospitals');
    var response = json.decode(result.body);
    name = response['data'][5]['name'];
    address=response['data'][5]['address'];
    number = response['data'][5]['phone'];
    name2 = response['data'][7]['name'];
    address2=response['data'][7]['address'];
    number2 = response['data'][7]['phone'];
    name3 = response['data'][8]['name'];
    address3=response['data'][8]['address'];
    number3 = response['data'][8]['phone'];
    name4 = response['data'][9]['name'];
    address4=response['data'][9]['address'];
    number4 = response['data'][9]['phone'];
  }

@override
  void initState() {
    hospitals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 30,
              child: ListTile(
                  leading: Image(image: AssetImage('images/hos.png'),
                    fit: BoxFit.cover,),
                  title:  Text(name,style: GoogleFonts.alegreya(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),),
                  subtitle:  Text(address,style: GoogleFonts.alegreya(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  trailing: Text(number,style: GoogleFonts.alegreya(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
            Divider(color: Colors.black,thickness: 4,),
            Card(
              elevation: 20,
              child: ListTile(
                leading: Image(image: AssetImage('images/hos.png'),
                  fit: BoxFit.cover,),
                title:  Text(name2,style: GoogleFonts.alegreya(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                ),),
                subtitle:  Text(address2,style: GoogleFonts.alegreya(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
                trailing: Text(number2,style: GoogleFonts.alegreya(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Divider(color: Colors.black,thickness: 4,),
            Card(
              elevation: 20,
              child: ListTile(
                leading: Image(image: AssetImage('images/hos.png'),
                  fit: BoxFit.cover,),
                title:  Text(name3,style: GoogleFonts.alegreya(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
                subtitle:  Text(address3,style: GoogleFonts.alegreya(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                trailing: Text(number3,style: GoogleFonts.alegreya(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Divider(color: Colors.black,thickness: 4,),
            Card(
              elevation: 20,
              child: ListTile(
                leading: Image(image: AssetImage('images/hos.png'),
                  fit: BoxFit.cover,),
                title:  Text(name4,style: GoogleFonts.alegreya(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                subtitle:  Text(address4,style: GoogleFonts.alegreya(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                trailing: Text(number4,style: GoogleFonts.alegreya(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Divider(color: Colors.black,thickness: 4,),
          ],
        ),
      ),),
    );
  }
}
