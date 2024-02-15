import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[600],
            child: Icon(
              Icons.person,
              size: 40,
            ),
          ),
          Positioned(
            right: -16,
            bottom: 0, // Adjusted the bottom position
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    side: BorderSide(color: Colors.white)),
                onPressed: () {
                  // Handle camera button press here
                },
                child: Icon(Icons.cameraswitch),
              ),
            ),
          )
        ],
      ),
    );
  }
}
