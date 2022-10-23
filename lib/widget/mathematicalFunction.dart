import 'package:flutter/material.dart';

class ButtonMathematicalFunction extends StatelessWidget {
  ButtonMathematicalFunction({
    required this.boxcolor,
    this.textColor,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final Color? boxcolor;
  final Color? textColor;
  final String text;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        decoration: BoxDecoration(
            color: boxcolor,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
        )),
      ),
    );
  }
}
