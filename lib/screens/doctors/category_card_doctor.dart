import 'package:NBD/screens/doctors/home_doctor.dart';
import 'package:NBD/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class CategoriesDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/images/dental_surgeon.png", "text": "Dental Surgeon"},
      {"image": "assets/images/dental_surgeon.png", "text": "Dental Surgeon"},
      {"image": "assets/images/dental_surgeon.png", "text": "Dental Surgeon"},
      {"image": "assets/images/dental_surgeon.png", "text": "Dental Surgeon"},
      // {"image": "assets/images/pharmacy_1.png", "text": "Pharmacies"},
      // {"image": "assets/images/lab_1.png", "text": "Labs"},
    ];
    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        //   child: SectionTitle(
        //     title: "Categories",
        //     press: () {},
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                image: categories[index]["image"],
                text: categories[index]["text"],
                press: () {},
              ),
            ),
          ),
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

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(100),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(80),
              width: getProportionateScreenWidth(80),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(19),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
