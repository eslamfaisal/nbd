import 'package:NBD/models/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:NBD/size_config.dart';


UserModel currentUser;
const kPrimaryColor = Color(0xFF187CFD);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kOrangeColor = Color(0xffEF716B);
const kBlueColor = Color(0xff4B7FFB);
const kYellowColor = Color(0xffFFB167);
const kTitleTextColor = Color(0xff1E1C61);
const kWhiteColor = Color(0xffffffff);
const kSearchTextColor = Color(0xffC0C0C0);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF187CFD), Color(0xFF084EA9)],
);
const kSecondaryColor = Color(0xFF084EA9);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kFirstNameNullError = "Please Enter your first name";
const String kLastNameNullError = "Please Enter your last name";
const String kTypeNullError = "Please Enter your type";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
