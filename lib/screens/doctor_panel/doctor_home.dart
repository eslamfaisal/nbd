import 'package:NBD/constants.dart';
import 'package:NBD/screens/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

class DoctorsHome extends StatelessWidget {
  static String routeName = "/doctorsHome";

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
              child: Image(image: AssetImage('')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr.\rAdel',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]),
              ),
              Text(
                'Sr.\rPsychologist',
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
                  itemBuilder: (context, index) => buildAppointmentItem(),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 50),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                  itemCount: 10),
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

  Widget buildAppointmentItem() => Container(
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
                    child: Text('Ahmed Mohamed Esmail mohammed asbdahsdn',
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
                    child: Text('01000000000',
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
                  Text('Tuesday',
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
                  Text('19:00',
                      style: TextStyle(
                        fontSize: 18,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Accept',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Decline',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
