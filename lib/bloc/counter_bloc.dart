import 'package:rxdart/rxdart.dart';

class CounterBloc{
  int _count = 0;

  final _countSubject = BehaviorSubject<int>.seeded(0);

  void addCounter(){
    _count++;
    _countSubject.add(_count);
  }

  Stream<int> get count$ => _countSubject.stream;
}