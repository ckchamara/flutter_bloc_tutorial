import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { incremenent, decrement }
enum CounterEt { incremenent, decrement }

class testCounterBloc extends Bloc<CounterEvent, int> {
  // testCounterBloc() : super(0);
  //
  // void increment() => emit(state + 1);
  // void decrement() => emit(state - 1);

  testCounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      switch(event){
        case CounterEvent.incremenent : emit(state + 1);
        break;
        case CounterEvent.decrement : emit(state - 1);
        break;
      }
    });
  }
}

// void main() {
//   final bloc = testCounterBloc();
//
//   cubit.increment();
//   print(cubit.state);
//
//   cubit.decrement();
//   print(cubit.state);
//
//   cubit.increment();
//   print(cubit.state);
//
//   cubit.close();
// }
