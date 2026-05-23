import 'package:basketball_counter/widgets/custom_button.dart';
import 'package:basketball_counter/widgets/custom_team_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POINTS COUNTER', style: TextStyle(color: Colors.green)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTeamWidget(team: 'A'),
                VerticalDivider(width: 1, thickness: 1, color: Colors.green.withValues(alpha: 0.4), indent: 28, endIndent: 18,),
                CustomTeamWidget(team: 'B'),
              ],
            ),
          ),
          CustomButton(title: 'RESET', isBorded: true, onPressed: () {}),
        ],
      ),
    );
  }
}
