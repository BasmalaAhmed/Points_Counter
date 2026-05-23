import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed, this.isBorded = false});
  final String title;
  final void Function()? onPressed;
  final bool isBorded;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: (isBorded) ? ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.green,
        side: BorderSide(
          color: Colors.green,
          width: 1.5,
        )
      ): ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      child: Padding(padding: const EdgeInsets.all(12), child: Text(title, style: TextStyle(
        fontSize: 16,
      ),)),
    );
  }
}