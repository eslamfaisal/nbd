import 'package:NBD/constants.dart';
import 'package:NBD/screens/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

class PharmaciesHome extends StatelessWidget {
  static String routeName = "/PharmaciesHome";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 55,
                child: Image(image: AssetImage('')),
              ),
            ),
          ),
          Text(
            'Al-azaby',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]),
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
                  Icon(
                    Icons.location_on_outlined,
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('villa 471, El-Shorouk, Cairo ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
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
                    Icons.note_outlined,
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('Conjestal \nComtrex 500',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 15,
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
                    Icons.money_sharp,
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('100 EGP',
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
              SizedBox(
                height: 20,
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
