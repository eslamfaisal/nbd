import 'package:NBD/screens/doctors/book_appoinment.dart';
import 'package:NBD/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DoctorsContent extends StatelessWidget {
  static String routeName = "/doctor_content";
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
                    'Dr.\rAdel',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                  Text(
                    'Sr.\rPsychologist',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: kBlueColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.call), onPressed: () {}),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text('Call',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Patient',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            '1.8K',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            '4yr',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900]),
                          ),
                        ],
                      ),
                      Column(
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
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
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
                    'write doctor description and bio here',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(55),
                  ),
                  Container(
                    height: getProportionateScreenHeight(65),

                    width: double.infinity,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, BookAppointment.routeName);
                      },
                      child: Text(
                        'Book Appointment',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
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
