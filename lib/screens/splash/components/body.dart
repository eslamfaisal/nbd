import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:NBD/constants.dart';
import 'package:NBD/screens/sign_in/sign_in_screen.dart';
import 'package:NBD/size_config.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInScreen())));
  }

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"image": "assets/icons/icon.svg", "text": " "},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: getProportionateScreenHeight(550),
        width: getProportionateScreenWidth(400),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            SpinKitWave(color: kSecondaryColor),
          ],
        ),
      ),
    );
  }
}
