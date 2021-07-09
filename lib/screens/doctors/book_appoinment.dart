import 'package:NBD/components/textField.dart';
import 'package:NBD/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class BookAppointment extends StatelessWidget {
  static String routeName = "/Book Appointment";
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        child: Scaffold(
            //resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/doctor_1.png'),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(509),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My name is Dr Adel, Specialist in wtv, I\'ll do my best to help you in your illness',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(25),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: defaultFormFiled(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            type: TextInputType.datetime,
                            controller: timeController,
                            validate: (String timevalue) {
                              if (timevalue.isEmpty) {
                                return 'time must not be empty';
                              }
                              return null;
                            },
                            label: 'Pick suitable time',
                            prefix: Icons.watch_later_outlined,
                            ontapped: () {
                              showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now())
                                  .then((timevalue) => {
                                        timeController.text =
                                            timevalue.format(context).toString()
                                      });
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: defaultFormFiled(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            type: TextInputType.datetime,
                            controller: dateController,
                            validate: (String datevalue) {
                              if (datevalue.isEmpty) {
                                return 'Date must not be empty';
                              }
                              return null;
                            },
                            label: 'Pick suitable date',
                            prefix: Icons.calendar_today_outlined,
                            ontapped: () {
                              showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2021-12-31'))
                                  .then((datevalue) => {
                                        dateController.text =
                                            DateFormat.yMMMd().format(datevalue)
                                      });
                            }),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(25),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: double.infinity,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Book Appointment',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.blue[900],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
