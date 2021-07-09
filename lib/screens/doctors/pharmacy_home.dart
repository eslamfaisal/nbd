import 'package:NBD/screens/doctors/category_card_doctor.dart';
import 'package:NBD/screens/doctors/doctor_card.dart';
import 'package:NBD/screens/doctors/search_bar_doctor.dart';
import 'package:NBD/screens/doctors/top_doctors.dart';
import 'package:NBD/screens/doctors/top_pharmacies.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class HomeScreenPharmacy extends StatelessWidget {
  static String routeName = "/home_Pharmacy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Pharmacies',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TopPharmacies(),
            ],
          ),
        ),
      ),
    );
  }
}
