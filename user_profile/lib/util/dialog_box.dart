import 'package:flutter/material.dart';
import "package:user_profile/util/my_button.dart";

class DialogBox extends StatelessWidget {
  final TextEditingController myController;
  final VoidCallback onSave;
  final VoidCallback onClear;

  const DialogBox({
    Key? key,
    required this.myController,
    required this.onClear,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Update Field",
              ),
            ),
            Row(
              children: [
                MyButton(
                  color: Color.fromARGB(255, 239, 129, 129),
                  onPressed: onSave,
                  text: "Update",
                ),
                MyButton(
                  color: Color.fromARGB(255, 112, 227, 116),
                  onPressed: onClear,
                  text: "Clear",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
