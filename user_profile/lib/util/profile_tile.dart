import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final Function onPressed;
  final String text;
  final String title;
  ProfileTile(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start, // Added this line
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold), // Added this line
                ),
              ],
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
        ),
      ),
    );
  }
}
