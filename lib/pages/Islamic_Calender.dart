import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:islamic_hijri_calendar/islamic_hijri_calendar.dart';

class IslamicCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HijriCalendar today = HijriCalendar.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Islamic Calendar'),
      ),
      body: Center(
        child: Container(
          child: IslamicHijriCalendar(
            highlightBorder: Theme.of(context)
                .colorScheme
                .primary, // Set selected date border color
            defaultBorder: Theme.of(context)
                .colorScheme
                .onSurface
                .withOpacity(.1), // Set default date border color
            highlightTextColor: Theme.of(context)
                .colorScheme
                .background, // Set today date text color
            defaultTextColor: Theme.of(context)
                .colorScheme
                .onBackground, //Set other dates text color
            defaultBackColor: Theme.of(context)
                .colorScheme
                .background, // Set default date background color
            adjustmentValue:
                0, // Set Islamic Hijri calendar adjustment value which is set by the user side
            isGoogleFont:
                true, // Set to true if you want to use Google fonts, else false
            fontFamilyName:
                "Lato", // Set your custom font family name or Google font name
            getSelectedEnglishDate: (selectedDate) {
              // Returns the date selected by user
              print("English Date: $selectedDate");
            },
            getSelectedHijriDate: (selectedDate) {
              // Returns the date selected by user in Hijri format
              print("Hijri Date: $selectedDate");
            },
            isDisablePreviousNextMonthDates:
                false, // Set dates not included in the current month to be disabled or enabled
          ),
        ),
      ),
    );
  }
}
