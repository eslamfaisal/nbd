import 'package:NBD/screens/doctors/home_doctor.dart';
import 'package:NBD/screens/doctors/pharmacy_home.dart';
import 'package:NBD/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> categories = [
    //   {"image": "assets/images/doctor_1.png", "text": "Doctors"},
    //   {"image": "assets/images/pharmacy_1.png", "text": "Pharmacies"},
    //   {"image": "assets/images/lab_1.png", "text": "Labs"},
    // ];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Categories",
            press: () {},
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(
              image: Image(image: AssetImage('assets/images/doctor_1.png')),
              text: 'Doctors',
              press: () {
                Navigator.pushNamed(context, HomeScreenDoctor.routeName);
              },
            ),
            CategoryCard(
              image: Image(image: AssetImage('assets/images/pharmacy_1.png')),
              text: 'Pharmacies',
              press: () {
                Navigator.pushNamed(context, HomeScreenPharmacy.routeName);
              },
            ),
            CategoryCard(
              image: Image(image: AssetImage('assets/images/lab_1.png')),
              text: 'Labs',
              press: () {
                Navigator.pushNamed(context, HomeScreenDoctor.routeName);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.image,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final Image image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(110),
        child: Column(
          children: [
            Container(
                // padding: EdgeInsets.all(getProportionateScreenWidth(0)),
                height: getProportionateScreenWidth(110),
                width: getProportionateScreenWidth(110),
                decoration: BoxDecoration(
                  // color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: image),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(19),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
