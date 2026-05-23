import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement ({required String team , required int buttonNum}){

    if(team == 'A'){
      teamAPoints += buttonNum; 
      emit(CounterAIncrementState());
    }
    else{
      teamBPoints += buttonNum;
      emit(CounterBIncrementState());
    }
  }
}
