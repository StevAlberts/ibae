import 'dart:async';
import '../widgets/bloc_provider.dart';
import '../models/cycle.dart';


class CycleBloc implements BlocBase{
  Cycle _cycle;

  //Streams to handle Cycle
  StreamController<Cycle> _cycleController = StreamController<Cycle>.broadcast();
  Sink<Cycle> get _inCycle => _cycleController.sink;
  Stream<Cycle> get outCycle => _cycleController.stream;

  //Streams to handle action on cycle
  StreamController<Cycle> _updateCycleController = StreamController();
  Sink<Cycle> get updateCycle => _updateCycleController.sink;

  CycleBloc(){
    _updateCycleController.stream.listen(_updateCycle);
  }

  @override
  void dispose() {
    _cycleController.close();
    _updateCycleController.close();
  }


  void _updateCycle(Cycle cycle) {
    _cycle = cycle;
    _inCycle.add(_cycle);
  }
}