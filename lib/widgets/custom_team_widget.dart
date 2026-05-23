import 'package:basketball_counter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomTeamWidget extends StatelessWidget {
  const CustomTeamWidget({super.key, required this.team});
  final String team;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Team $team', style: TextStyle(fontSize: 32, color: Colors.green)),
        SizedBox(height: size.height * 0.02),
        Text('0', style: TextStyle(fontSize: 100, color: Colors.green)),
        SizedBox(height: size.height * 0.02),
        CustomButton(title: 'Add 1 Point', onPressed: () {}),
        SizedBox(height: size.height * 0.015),
        CustomButton(title: 'Add 2 Point', onPressed: () {}),
        SizedBox(height: size.height * 0.015),
        CustomButton(title: 'Add 3 Point', onPressed: () {}),
      ],
    );
  }
}
