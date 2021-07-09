
import 'package:NBD/screens/doctors/category_card_doctor.dart';
import 'package:NBD/screens/doctors/doctor_card.dart';
import 'package:NBD/screens/doctors/search_bar_doctor.dart';
import 'package:NBD/screens/doctors/top_doctors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class HomeScreenDoctor extends StatelessWidget {
  static String routeName = "/home_doctor";
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
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       SvgPicture.asset('assets/icons/menu.svg'),
              //       SvgPicture.asset('assets/icons/profile.svg'),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 50,
              // ),
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
                  'Categories',
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
              CategoriesDoctor(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
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
              TopDoctors(),
            ],
          ),
        ),
      ),
    );
  }

  // buildCategoryList() {
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //       children: <Widget>[
  //         SizedBox(
  //           width: 30,
  //         ),
  //         CategoryCard(
  //           'Dental\nSurgeon',
  //           'assets/icons/dental_surgeon.png',
  //           kBlueColor,
  //         ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         CategoryCard(
  //           'Heart\nSurgeon',
  //           'assets/icons/heart_surgeon.png',
  //           kYellowColor,
  //         ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         CategoryCard(
  //           'Eye\nSpecialist',
  //           'assets/icons/eye_specialist.png',
  //           kOrangeColor,
  //         ),
  //         SizedBox(
  //           width: 30,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // buildDoctorList() {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(
  //       horizontal: 20,
  //     ),
  //     child: Column(
  //       children: <Widget>[
  //         DoctorCard(
  //           'Dr.Adel\nSr.Psychologist',
  //           '4.5 Star',
  //           'assets/images/doctor_1.png',
  //             kSecondaryColor.withOpacity(0.1),
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //         DoctorCard(
  //           'Dr.Adel\nSr.Psychologist',
  //           '4.5 Star',
  //           'assets/images/doctor_1.png',
  //             kSecondaryColor.withOpacity(0.1)
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //         DoctorCard(
  //           'Dr.Adel\nSr.Psychologist',
  //           '4.5 Star',
  //           'assets/images/doctor_1.png',
  //             kSecondaryColor.withOpacity(0.1)
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
