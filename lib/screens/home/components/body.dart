import 'package:NBD/screens/home/components/high_rating_labs.dart';
import 'package:NBD/screens/home/components/high_rating_pharmacies.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'discount_banner.dart';
import 'Categories.dart';
import 'home_header.dart';
import 'high_rating_doctors.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            // Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            // PopularProducts(),
            // SizedBox(height: getProportionateScreenWidth(30)),
            HighRatingDoctors(),
            SizedBox(height: getProportionateScreenWidth(10)),
            HighRatingPharmacies(),
            SizedBox(height: getProportionateScreenWidth(10)),
            HighRatingLabs(),
            SizedBox(height: getProportionateScreenWidth(10)),

          ],
        ),
      ),
    );
  }
}
