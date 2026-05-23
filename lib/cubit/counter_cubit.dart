import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement ({required String team , required int buttonNum}){

    if(team == 'A'){
      teamAPoints += buttonNum; 
      emit(CounterIncrementState());
    }
    else{
      teamBPoints += buttonNum;
      emit(CounterIncrementState());
    }
  }

  void teamReset (){
    teamAPoints = 0;
      teamBPoints = 0;
      emit(CounterResetState());
  }
}
