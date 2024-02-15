import 'package:flutter/material.dart';
import 'package:user_profile/util/dialog_box.dart';
import 'package:user_profile/util/profile_name.dart';
import 'package:user_profile/util/profile_tile.dart';
import 'package:user_profile/util/profile_pic.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final myController = TextEditingController();
  Map<String, dynamic> person = {
    'name': "Muhammed Umar",
    'email': "Hammedumar@gmail.com",
    'bvn': '234567890765343',
    'dob': '24/12/1994',
    'number': "08151845194"
  };

  String? selectedField;

  void onUpdate() {
    if (selectedField != null && myController.text.isNotEmpty) {
      setState(() {
        person[selectedField!] = myController.text;
      });
    }
    Navigator.of(context).pop();
  }

  void onClear() {
    Navigator.of(context).pop();
  }

  void updateProfile(String field) {
    selectedField = field;
    myController.text = person[field];
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          myController: myController,
          onClear: onClear,
          onSave: onUpdate,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey[400],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ProfilePic(),
            ),
            SizedBox(height: 20),
            ProfileName(
              onPressed: () => updateProfile('name'),
              text: person['name'],
            ),
            SizedBox(height: 5),
            ProfileTile(
              onPressed: () => updateProfile('email'),
              text: person['email'],
              title: "Email",
            ),
            SizedBox(height: 5),
            ProfileTile(
              onPressed: () => updateProfile('bvn'),
              text: person['bvn'],
              title: "BVN",
            ),
            SizedBox(height: 5),
            ProfileTile(
              onPressed: () => updateProfile('dob'),
              text: person['dob'],
              title: "Date Of Birth",
            ),
            SizedBox(height: 5),
            ProfileTile(
              onPressed: () => updateProfile('number'),
              text: person['number'],
              title: "Phone Number",
            ),
          ],
        ),
      ),
    );
  }
}
