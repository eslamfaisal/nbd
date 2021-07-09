import 'package:NBD/models/UserModel.dart';
import 'package:NBD/screens/doctors/doctor_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class HighRatingDoctors extends StatefulWidget {
  const HighRatingDoctors({
    Key key,
  }) : super(key: key);

  @override
  _HighRatingDoctorsState createState() => _HighRatingDoctorsState();
}

class _HighRatingDoctorsState extends State<HighRatingDoctors> {
  @override
  void initState() {
    getDoctors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Doctors",
            press: () {
              Navigator.pushNamed(context, DoctorsContent.routeName);
            },
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...doctorsWidgets,
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }

  List<UserModel> doctors = [];
  List<Widget> doctorsWidgets=[];

  void getDoctors() {
    FirebaseFirestore.instance
        .collection('users')
        .where("type", isEqualTo: "Doctor")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        UserModel doctor = UserModel.fromJson(element.data());
        doctors.add(doctor);
        doctorsWidgets.add(dctorWidget(doctor));
        setState(() {

        });
      });
    });
  }

  Widget dctorWidget(UserModel doctor) {
    return SpecialOfferCard(
      image: "assets/images/doctor_1.png",
      category: doctor.first_name + ' '+doctor.last_name,
      rating: 4.5,
      //numOfBrands: 4,
      press: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsContent(doctor),
          ),
        );
      },
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
          width: getProportionateScreenWidth(120),
          height: getProportionateScreenWidth(130),
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
                    vertical: getProportionateScreenWidth(30),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
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
