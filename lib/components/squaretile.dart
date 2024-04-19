import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({super.key,
  required this.imagepath});

  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200
      ),
      child: Image.asset(imagepath,
      height: 50,),
    );
  }
}