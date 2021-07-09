import 'package:NBD/constants.dart';
import 'package:NBD/models/Appointment.dart';
import 'package:NBD/screens/edit_profile/edit_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DoctorsHome extends StatefulWidget {
  static String routeName = "/doctorsHome";

  @override
  _DoctorsHomeState createState() => _DoctorsHomeState();
}

class _DoctorsHomeState extends State<DoctorsHome> {
  List<AppointmentModel> appointments = [];

  @override
  void initState() {
    getAppointments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 55,
              child: Image(image: AssetImage('assets/images/doctor_1.png')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${currentUser.first_name} ${currentUser.last_name}'
                ,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]),
              ),
              Text(
                ' ${currentUser.last_name}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildAppointmentItem(appointments[index]),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 50),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                  itemCount: appointments.length),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, DoctorProfile.routeName);
              },
              child: Text(
                'Edit profile',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.blue[900],
            ),
          ),
        ],
      )),
    );
  }

  Widget buildAppointmentItem(AppointmentModel appointment) => Container(
        child: Container(
          decoration: BoxDecoration( border: Border.all(color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: kSecondaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(appointment.user_name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_enabled_outlined,
                      color: kSecondaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(appointment.user_phone,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_today_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(appointment.date,
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 18,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: kSecondaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(appointment.time,
                        style: TextStyle(
                          fontSize: 18,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );

  void getAppointments() {
    FirebaseFirestore.instance
        .collection('appointments')
        .where("doctor_id", isEqualTo: currentUser.id)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        AppointmentModel model = AppointmentModel.fromJson(element.data());
        print('AppointmentModel' +model.toJson().toString());
        appointments.add(model);
      });
      setState(() {

      });
    });
  }
}
