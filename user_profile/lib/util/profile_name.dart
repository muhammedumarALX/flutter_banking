import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  final Function onPressed;
  final String text;

  ProfileName({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Icon(
            Icons.edit,
            size: 25.0,
            color: Colors.grey[900],
          ),
        ),
      ],
    );
  }
}
