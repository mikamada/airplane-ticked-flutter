import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_state.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    // print('prev state: $state');
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    print(state);
    // print('new state: $state');
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    print('index: $index');
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
