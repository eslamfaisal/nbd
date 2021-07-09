import 'package:NBD/components/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  static String routeName = "/DoctorProfile";
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var spechialityController = TextEditingController();
  var experinceController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();

  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile',
              style: TextStyle(
                fontSize: 20,
              )),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // if (state is UpdateProfileLoadingState)
                      //LinearProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 55,
                              child: Image(image: AssetImage('')),
                            ),
                            Positioned(
                              top: 60,
                              left: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.5),
                                  shape: BoxShape.circle,
                                ),
                                height: 45,
                                width: 100,
                                child: IconButton(
                                    icon: Icon(Icons.add_a_photo_outlined),
                                    onPressed: () {}),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                            controller: nameController,
                            type: TextInputType.name,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'name must not be empty';
                              }

                              return null;
                            },
                            label: 'Name',
                            outsideicon: Icon(Icons.person_outline_outlined),
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black),
                            outlinedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                            controller: spechialityController,
                            type: TextInputType.text,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'Speciality must not be empty';
                              }

                              return null;
                            },
                            label: 'Speciality',
                            outsideicon:
                                Icon(Icons.supervised_user_circle_sharp),
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black),
                            outlinedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                            controller: experinceController,
                            type: TextInputType.number,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'Speciality must not be empty';
                              }

                              return null;
                            },
                            label: 'Experince',
                            outsideicon: Icon(Icons.exposure_plus_1_rounded),
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black),
                            outlinedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return 'email must not be empty';
                            }

                            return null;
                          },
                          label: 'email',
                          outsideicon: Icon(Icons.email_outlined),
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                          controller: emailController,
                          type: TextInputType.text,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return 'address must not be empty';
                            }

                            return null;
                          },
                          label: 'address',
                          outsideicon: Icon(Icons.location_on_outlined),
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: defaultFormField(
                            controller: phoneController,
                            type: TextInputType.phone,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'Phone must not be empty';
                              }

                              return null;
                            },
                            label: 'Phone',
                            outsideicon: Icon(Icons.phone),
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black),
                            outlinedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    if (formKey.currentState.validate()) {}
                  },
                  child: Text(
                    'UPDATE'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ));
  }
}
