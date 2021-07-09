import 'package:flutter/material.dart';

Widget defaultFormFiled(
        {@required TextInputType type,
        @required TextEditingController controller,
        Function onSubmit,
        Function onChange,
        Function ontapped,
        @required Function validate,
        @required String label,
        @required IconData prefix,
        OutlineInputBorder border}) =>
    TextFormField(
      validator: validate,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      keyboardType: type,
      controller: controller,
      onTap: ontapped,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
      ),
    );
