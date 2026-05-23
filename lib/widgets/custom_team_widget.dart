import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:basketball_counter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTeamWidget extends StatelessWidget {
  const CustomTeamWidget({super.key, required this.team, required this.teamScore});
  final String team;
  final String teamScore;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Column(
          children: [
            Text('Team $team', style: TextStyle(fontSize: 32, color: Colors.green)),
            SizedBox(height: size.height * 0.02),
            Text(teamScore, style: TextStyle(fontSize: 100, color: Colors.green)),
            SizedBox(height: size.height * 0.02),
            CustomButton(title: 'Add 1 Point', onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: team, buttonNum: 1);
            }),
            SizedBox(height: size.height * 0.015),
            CustomButton(title: 'Add 2 Point', onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: team, buttonNum: 2);
            }),
            SizedBox(height: size.height * 0.015),
            CustomButton(title: 'Add 3 Point', onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: team, buttonNum: 3);
            }),
          ],
        );
      },
    );
  }
}
