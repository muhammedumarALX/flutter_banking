import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtile;

  const MyListTile({
    super.key,
    required this.iconImagePath,
    required this.tileSubtile,
    required this.tileTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // icon
        Row(
          children: [
            Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImagePath)),
            SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                tileTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                tileSubtile,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ]),
          ],
        ),

        Icon(Icons.arrow_forward_ios),
      ]),
    );
  }
}
