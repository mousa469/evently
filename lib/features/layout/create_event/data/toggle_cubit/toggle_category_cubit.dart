import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_category_state.dart';

class ToggleCategoryCubit extends Cubit<ToggleCategoryState> {
  ToggleCategoryCubit() : super(ToggleCategoryInitial());

  int index = 0;

  void toggleCategory() {
    emit(ToggleCategorySucces(index: index));
  }
}
