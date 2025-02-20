import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_settings_state.dart';

class LanguageToggleCubit extends Cubit<LanguageToggleState> {
  LanguageToggleCubit() : super(LanguageToggleInitial());

  bool toggle = false;

  void changeToggleSettings() {
    emit(LanguageToggleSuccess(toggle: toggle));
  }
}
