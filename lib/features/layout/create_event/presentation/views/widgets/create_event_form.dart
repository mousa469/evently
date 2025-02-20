import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/helper/easy_loading.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/features/layout/create_event/data/cubit/create_event_cubit.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/choose_event_location.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CreateEventForm extends StatefulWidget {
  const CreateEventForm({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  State<CreateEventForm> createState() => _CreateEventFormState();
}

class _CreateEventFormState extends State<CreateEventForm> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String chooseDateText = "choose date";
  String chooseTimeText = "choose Time";
  String eventCategory = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateEventCubit, CreateEventState>(
      listener: (context, state) {
        if (state is CreateEventLoading) {
          CustomEasyLoading.showLoading();
        } else if (state is CreateEventSuccess) {
          CustomEasyLoading.hideLoading();
          CustomEasyLoading.showSuccess(state.successMessage);
        } else if (state is CreateEventFailure) {
          CustomEasyLoading.hideLoading();
          CustomEasyLoading.showError(state.errMessage);
        }
      },
      child: SizedBox(
        width: double.infinity,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: AppStyles.textStyleMeduim16,
              ),
              6.verticalSpace,
              CustomTextField(
                controller: titleController,
                hint: "Event Title",
                onValidate: (value) {
                  if (value == null || value.isEmpty) {
                    return "field is required";
                  }
                  return null;
                },
                hintColor: AppColors.gray,
                prefixIcon: Icon(
                  Icons.edit_square,
                  color: AppColors.gray,
                ),
              ),
              12.verticalSpace,
              Text(
                "Description",
                style: AppStyles.textStyleMeduim16,
              ),
              6.verticalSpace,
              CustomTextField(
                onValidate: (value) {
                  if (value == null || value.isEmpty) {
                    return "field is required";
                  }
                  return null;
                },
                controller: descriptionController,
                maxLines: 5,
                hint: "Event Description",
                hintColor: AppColors.gray,
              ),
              12.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                  ),
                  8.horizontalSpace,
                  Text(
                    "Event Date",
                    style: AppStyles.textStyleMeduim16,
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () async {
                        chooseDate();
                      },
                      child: Text(
                        chooseDateText,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppStyles.textStyleMeduim16
                            .copyWith(color: AppColors.kPrimaryColor),
                      ))
                  //  DatePickerDialog(firstDate: DateTime.now(), lastDate: DateTime(DateTime.now().year + 2 , DateTime.now().month, DateTime.now().day))
                ],
              ),
              6.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.timer_outlined,
                    size: 18,
                  ),
                  8.horizontalSpace,
                  Text(
                    "Event Time",
                    style: AppStyles.textStyleMeduim16,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () async {
                      chooseTime();
                    },
                    child: Text(
                      chooseTimeText,
                      style: AppStyles.textStyleMeduim16
                          .copyWith(color: AppColors.kPrimaryColor),
                    ),
                  ),

                  //  DatePickerDialog(firstDate: DateTime.now(), lastDate: DateTime(DateTime.now().year + 2 , DateTime.now().month, DateTime.now().day))
                ],
              ),
              12.verticalSpace,
              Text(
                "Location",
                style: AppStyles.textStyleMeduim16,
              ),
              6.verticalSpace,
              ChooseEventLocation(
                text: "Choose Event Location",
              ),
              16.verticalSpace,
              CustomButton(
                text: "Create Event",
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    if (chooseDateText == "choose date") {
                      CustomEasyLoading.showError("Date field is required");

                      return;
                    }
                    if (chooseTimeText == "choose Time") {
                      CustomEasyLoading.showError("time field is required");
                      return;
                    }

                    eventCategory = CategoryModel.getEventCategoryList(
                            context)[widget.currentIndex + 1]
                        .itemName;
                    EventModel event = EventModel(
                        eventID: FirebaseFirestore.instance
                            .collection(
                                SharedPrefs.getString(key: Constants.userID))
                            .doc()
                            .id,
                        eventTitle: titleController.text,
                        eventDescription: descriptionController.text,
                        eventDate: chooseDateText,
                        eventTime: chooseTimeText,
                        eventCategory: eventCategory);

                    BlocProvider.of<CreateEventCubit>(context)
                        .createNewEvent(event);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void chooseDate() async {
    DateTime? eventDate = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 2));

    if (eventDate != null) {
      setState(() {
        chooseDateText =
            DateFormat("dd MMM ,yyyy").format(eventDate).toString();
      });
    } else {
      return null;
    }
  }

  void chooseTime() async {
    TimeOfDay? eventTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (eventTime != null) {
      final now = DateTime.now();
      final dateTime = DateTime(
          now.year, now.month, now.day, eventTime.hour, eventTime.minute);

      setState(() {
        chooseTimeText = DateFormat('hh:mm a')
            .format(dateTime)
            .toString(); // Example: 02:30 PM
      });
    }
  }
}
