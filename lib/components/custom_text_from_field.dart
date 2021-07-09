import 'package:flutter/material.dart';

Widget defaultFormField(
        {@required TextEditingController controller,
        @required TextInputType type,
        Function onSubmit,
        Function onChange,
        Function onTap,
        bool isPassword = false,
        @required Function validate,
        @required String label,
        IconData prefix,
        BorderRadius borderRadius,
        BorderSide borderSide,
        OutlineInputBorder outlinedBorder,
        IconData suffix,
        Function suffixPressed,
        bool isClickable = true,
        TextStyle labelstyle,
        Icon outsideicon,
        Color prefixiconcolor,
        context}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        icon: outsideicon,
        labelText: label,
        labelStyle: labelstyle,
        prefixIcon: Icon(
          prefix,
          color: prefixiconcolor,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
            borderRadius: borderRadius, borderSide: borderSide),
        enabledBorder: OutlineInputBorder(
            borderSide: borderSide, borderRadius: borderRadius),
      ),
    );
