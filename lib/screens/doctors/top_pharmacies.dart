import 'package:NBD/screens/doctors/doctor_content.dart';
import 'package:NBD/screens/doctors/pharmacy_content.dart';
import 'package:NBD/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class TopPharmacies extends StatelessWidget {
  const TopPharmacies({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding:
        //   EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        //   child: SectionTitle(
        //     title: "Top Doctors",
        //     press: () {Navigator.pushNamed(context, DoctorsContent.routeName);},
        //   ),
        // ),
        //SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "El-Azaby Pharmacies",
                rating: 4.5,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Seif Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Roshdy Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Masr Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Lamar&Attallah Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Zekry Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    this.rating = 0.0,
    //@required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  //final int numOfBrands;
  final double rating;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(340),
          height: getProportionateScreenWidth(100),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.asset(image),
                title: Text(
                  "$category",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
