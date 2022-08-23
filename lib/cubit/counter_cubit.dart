import 'package:basketball_score/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(IncrementState());

  int aPoints = 0;
  int bPoints = 0;


  void addPoints(int valueToAdd, bool teamA){

    teamA? aPoints+= valueToAdd : bPoints+= valueToAdd;
    emit(IncrementState());
  }

  void reset (bool teamA){
    teamA? aPoints = 0 : bPoints = 0;
    emit(ResetState());
  }


}