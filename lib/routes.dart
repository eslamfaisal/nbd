import 'package:NBD/screens/doctor_panel/doctor_home.dart';
import 'package:NBD/screens/edit_profile/edit_profile.dart';
import 'package:NBD/screens/doctors/book_appoinment.dart';
import 'package:NBD/screens/doctors/doctor_content.dart';
import 'package:NBD/screens/doctors/home_doctor.dart';
import 'package:NBD/screens/doctors/lab_content.dart';
import 'package:NBD/screens/doctors/pharmacy_content.dart';
import 'package:NBD/screens/doctors/pharmacy_home.dart';
import 'package:NBD/screens/lab_panel/lab_panel.dart';
import 'package:NBD/screens/pharmacy_panel/pharmacy_panel.dart';
import 'package:flutter/widgets.dart';
import 'package:NBD/screens/cart/cart_screen.dart';
import 'package:NBD/screens/complete_profile/complete_profile_screen.dart';
import 'package:NBD/screens/details/details_screen.dart';
import 'package:NBD/screens/forgot_password/forgot_password_screen.dart';
import 'package:NBD/screens/home/home_screen.dart';
import 'package:NBD/screens/login_success/login_success_screen.dart';
// import 'package:NBD/screens/services/otp_screen.dart';
import 'package:NBD/screens/profile/profile_screen.dart';
import 'package:NBD/screens/sign_in/sign_in_screen.dart';
import 'package:NBD/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  HomeScreenDoctor.routeName: (context) => HomeScreenDoctor(),
  HomeScreenPharmacy.routeName: (context) => HomeScreenPharmacy(),
  DoctorsContent.routeName: (context) => DoctorsContent(),
  PharmacyContent.routeName: (context) => PharmacyContent(),
  LabContent.routeName: (context) => LabContent(),
  BookAppointment.routeName: (context) => BookAppointment(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  DoctorsHome.routeName: (context) => DoctorsHome(),
  LabsHome.routeName: (context) => LabsHome(),
  PharmaciesHome.routeName: (context) => PharmaciesHome(),
  DoctorProfile.routeName: (context) => DoctorProfile(),
};
