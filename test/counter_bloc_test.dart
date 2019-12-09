import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_testdemo/counterBloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0',() {
      expect(counterBloc.initialState, 0);
    });

      
    blocTest(
      'emits [0, 1] when CounterEvent.increment is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterEvent.increment), 
      expect: [0, 1]
      );

    blocTest(
      'emits [0, -1] when CounterEvent.decrement is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterEvent.decrement),
      expect: [0, -1]
      );

  });

}