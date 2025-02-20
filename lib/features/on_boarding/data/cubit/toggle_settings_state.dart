part of 'toggle_settings_cubit.dart';

@immutable
sealed class LanguageToggleState {}

final class LanguageToggleInitial extends LanguageToggleState {}

final class LanguageToggleSuccess extends LanguageToggleState {
  final bool toggle;

  LanguageToggleSuccess({required this.toggle});
}
