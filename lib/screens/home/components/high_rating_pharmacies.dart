import 'package:NBD/screens/doctors/pharmacy_content.dart';
import 'package:NBD/screens/pharmacy_panel/pharmacy_panel.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class HighRatingPharmacies extends StatelessWidget {
  const HighRatingPharmacies({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "High Rating Pharmacies",
            press: () {
              Navigator.pushNamed(context, PharmaciesHome.routeName);
            },
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Elezaby Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmaciesHome.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Elezaby Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmaciesHome.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/pharmacy_1.png",
                category: "Elezaby Pharmacies",
                rating: 4.5,
                //numOfBrands: 4,
                press: () {
                  Navigator.pushNamed(context, PharmacyContent.routeName);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
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
          width: getProportionateScreenWidth(243),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.5),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "$rating Star ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
