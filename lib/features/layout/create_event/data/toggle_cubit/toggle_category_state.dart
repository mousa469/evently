part of 'toggle_category_cubit.dart';

@immutable
sealed class ToggleCategoryState {}

final class ToggleCategoryInitial extends ToggleCategoryState {}

final class ToggleCategorySucces extends ToggleCategoryState {
  final int index;

  ToggleCategorySucces({required this.index});
}
