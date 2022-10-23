import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: const BoxDecoration(
            color: Colors.transparent, shape: BoxShape.circle),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
