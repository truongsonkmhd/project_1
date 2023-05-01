import 'package:food_app/blocs3/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncreaseEvent>((event, emit) => _increase(event,emit));
    on<DecreaseEvent>((event, emit) => _decrease(event,emit));
  }
void _increase(CounterEvent event, Emitter<int> emit){
    if(state<10){
      emit(state + 1);
    }
}
void _decrease(CounterEvent event, Emitter<int> emit){
    if(state> 0 ){
      emit(state - 1);
    }
}
  // _increase(Emitter emit) {
  //   emit(state + 1);
  // }
  //
  // _decrease(Emitter emit) {
  //   emit(state - 1);
  // }

}
