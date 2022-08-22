// -----------Stremas------------------------------------


// Stream<int> Boatstream() async* {
//   for (var i = 0; i <= 10; ++i) {
//     print('sent boat no ' + i.toString());
//     await Future.delayed(Duration(seconds: 2));
//     yield i;
//   }
// }
//
// void main() async {
//   Stream<int> stream = Boatstream();
//   stream.listen((receivedData) {
//     print('received boat no. ' + receivedData.toString());
//   });
// }


// --------------------------Cubit-----------------------------------


import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}


void main() {
  final cubit = CounterCubit();

  cubit.increment();
  print(cubit.state);

  cubit.decrement();
  print(cubit.state);

  cubit.increment();
  print(cubit.state);

  cubit.close();
}
