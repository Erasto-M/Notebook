  import 'package:flutter/material.dart';
  Text bigText({
    required String text,
    required Color color}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: color, // Pass the color parameter to the TextStyle color property
      ),
    );
  }
  Text smallText({
    required String text,
    required Color color}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color, // Pass the color parameter to the TextStyle color property
      ),
    );
  }
  TextFormField textFormField({
    required String text,
    required String labelText,
    required Icon icon,
    required bool obSecureText,
    required TextEditingController controller,
    required TextInputType textInputType,
  }) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      obscureText: obSecureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: text,
        prefixIcon: icon,
        hintMaxLines: 1,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.green),
        ),
      ),
    );
  }
  SizedBox smallSpace(){
    return const SizedBox(
      height: 15,
    );
  }
  SizedBox bigSpace(){
    return const SizedBox(
      height: 25,
    );
  }
  ElevatedButton elevatedButton({
    required Function function,
    required Color color,
    required String text1}){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
      ),
      ),
        onPressed: (){
          function;
        } ,
        child: bigText(text: text1, color: color));
  }
  TextButton textButton({
    required Function function,
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required  Color color,
  }){
    return TextButton(
        onPressed: (){function;},
        child: Text(text,
        style: TextStyle(
            color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        ));
  }

