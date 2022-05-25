import 'package:flutter/material.dart';

class textFieldCustom extends StatelessWidget {

  final String text;
  double size1;
  double size2;

  textFieldCustom({Key? key,

    required this.size1,
    required this.size2,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size1,
      width: size2,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffF4F4F4),
      ),
      child:  TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text, hintStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
        ),
      ),
    );
  }
}
