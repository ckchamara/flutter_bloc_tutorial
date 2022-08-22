import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment()  => emit(state + 1);
  void decrement() => emit(state - 1);

  Stream<void> dec() async* {
    emit(state);
  }
}


Future<void> main(List<String> args) async {
  final cubit = CounterCubit();
  cubit.stream.listen((state) => print(state));

  cubit.increment();
  // print(cubit.state);

  cubit.decrement();
  // print(cubit.state);

  cubit.increment();
  cubit.increment();
  // print(cubit.state);

  cubit.close();
}
