import 'package:bloc/bloc.dart';
import 'package:evently/features/layout/create_event/data/repos/create_event_repo_impl.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:meta/meta.dart';

part 'create_event_state.dart';

class CreateEventCubit extends Cubit<CreateEventState> {
  CreateEventCubit() : super(CreateEventInitial());

  CreateEventRepoImpl createEventRepoImpl = CreateEventRepoImpl();

  createNewEvent(EventModel event) {
    emit(CreateEventLoading());
    var result = createEventRepoImpl.createNewEvent(event);
    result.fold((success) {
      emit(CreateEventSuccess(successMessage: "Event created successfully"));
    }, (failure) {
      emit(CreateEventFailure(errMessage: failure));
    });
  }
}
