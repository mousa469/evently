import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/choose_event_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEventForm extends StatefulWidget {
  const CreateEventForm({super.key});

  @override
  State<CreateEventForm> createState() => _CreateEventFormState();
}

class _CreateEventFormState extends State<CreateEventForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: AppStyles.textStyleMeduim16,
          ),
          6.verticalSpace,
          CustomTextField(
            hint: "Event Title",
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
                  onPressed: () {
                    chooseDate();
                  },
                  child: Text(
                    "choose date",
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
                onPressed: () {
                  chooseTime();
                },
                child: Text(
                  "choose Time",
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
          ChooseEventLocation(),
          16.verticalSpace,
          CustomButton(text: "Create Event", onPress: (){})
        ],
      ),
    );
  }

  void chooseDate() {
    showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 2));
  }

  void chooseTime() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
