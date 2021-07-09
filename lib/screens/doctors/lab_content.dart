import 'package:NBD/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class LabContent extends StatelessWidget {
  static String routeName = "/Lab_content";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/doctor_1.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(509),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'El-Mokhtbar Lab',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: kBlueColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.call), onPressed: () {}),
                      ),
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: kYellowColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.chat), onPressed: () {}),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Rating',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_sharp),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Text('from 10 AM to 9 PM'.toUpperCase()),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Text('Nasr City, Cairo, Egypt'),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Get directions'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'write Lab description and bio here',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: double.infinity,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Book Appointment',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
