// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find events that inspire you`
  String get onBoardingFirstTitle {
    return Intl.message(
      'Find events that inspire you',
      name: 'onBoardingFirstTitle',
      desc: '',
      args: [],
    );
  }

  /// `Personalize your experience`
  String get onBoardingFourthTitle {
    return Intl.message(
      'Personalize your experience',
      name: 'onBoardingFourthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Connect with friends and share moments`
  String get onBoardingThirdTitle {
    return Intl.message(
      'Connect with friends and share moments',
      name: 'onBoardingThirdTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find events that inspire you`
  String get onBoardingSecondTitle {
    return Intl.message(
      'Find events that inspire you',
      name: 'onBoardingSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Immerse yourself in a world of events designed to suit your unique interests. Whether you're a fan of live music, art workshops, professional networking, or just discovering new experiences, we have something for everyone. Our curated recommendations will help you explore every opportunity around you, connect, and make the most of it.`
  String get onBoardingfirstSubTitle {
    return Intl.message(
      'Immerse yourself in a world of events designed to suit your unique interests. Whether you\'re a fan of live music, art workshops, professional networking, or just discovering new experiences, we have something for everyone. Our curated recommendations will help you explore every opportunity around you, connect, and make the most of it.',
      name: 'onBoardingfirstSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Say goodbye to the hassle of event planning with our comprehensive planning tools. From setting up invitations and managing RSVPs to scheduling reminders and coordinating details, we've got you covered. Plan effortlessly and focus on what matters - creating an unforgettable experience for you and your guests.`
  String get onBoardingSecondSubTitle {
    return Intl.message(
      'Say goodbye to the hassle of event planning with our comprehensive planning tools. From setting up invitations and managing RSVPs to scheduling reminders and coordinating details, we\'ve got you covered. Plan effortlessly and focus on what matters - creating an unforgettable experience for you and your guests.',
      name: 'onBoardingSecondSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Make every event unforgettable by sharing the experience with others. Our platform allows you to invite friends, keep everyone updated, and celebrate moments together. Capture the excitement and share it with your network, so you can relive the highlights and cherish the memories.`
  String get onBoardingThirdSubTitle {
    return Intl.message(
      'Make every event unforgettable by sharing the experience with others. Our platform allows you to invite friends, keep everyone updated, and celebrate moments together. Capture the excitement and share it with your network, so you can relive the highlights and cherish the memories.',
      name: 'onBoardingThirdSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose your preferred appearance and language to start with a comfortable and tailored experience that suits your style.`
  String get onBoardingFourthSubTitle {
    return Intl.message(
      'Choose your preferred appearance and language to start with a comfortable and tailored experience that suits your style.',
      name: 'onBoardingFourthSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message('Language', name: 'Language', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Let's Start`
  String get LetsStart {
    return Intl.message('Let\'s Start', name: 'LetsStart', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  // skipped getter for the 'ForgetPassword?' key

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  // skipped getter for the 'Don’tHaveAccount?' key

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get LoginWithGoogle {
    return Intl.message(
      'Login With Google',
      name: 'LoginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get Or {
    return Intl.message('Or', name: 'Or', desc: '', args: []);
  }

  /// `Name`
  String get Name {
    return Intl.message('Name', name: 'Name', desc: '', args: []);
  }

  /// `Re-enter Password`
  String get rePassword {
    return Intl.message(
      'Re-enter Password',
      name: 'rePassword',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'AlreadyHaveAccount?' key

  /// `Register`
  String get Register {
    return Intl.message('Register', name: 'Register', desc: '', args: []);
  }

  /// `Forget Password`
  String get ForgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get ResetPassword {
    return Intl.message(
      'Reset Password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get WelcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'WelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get All {
    return Intl.message('All', name: 'All', desc: '', args: []);
  }

  /// `Sports`
  String get sport {
    return Intl.message('Sports', name: 'sport', desc: '', args: []);
  }

  /// `Birthday`
  String get Birthday {
    return Intl.message('Birthday', name: 'Birthday', desc: '', args: []);
  }

  /// `Book Club`
  String get BookClub {
    return Intl.message('Book Club', name: 'BookClub', desc: '', args: []);
  }

  /// `Meeting`
  String get Meeting {
    return Intl.message('Meeting', name: 'Meeting', desc: '', args: []);
  }

  /// `Eating`
  String get Eating {
    return Intl.message('Eating', name: 'Eating', desc: '', args: []);
  }

  /// `Gaming`
  String get Gaming {
    return Intl.message('Gaming', name: 'Gaming', desc: '', args: []);
  }

  /// `Work Shop`
  String get WorkShop {
    return Intl.message('Work Shop', name: 'WorkShop', desc: '', args: []);
  }

  /// `Holiday`
  String get Holiday {
    return Intl.message('Holiday', name: 'Holiday', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Map`
  String get map {
    return Intl.message('Map', name: 'map', desc: '', args: []);
  }

  /// `Love`
  String get love {
    return Intl.message('Love', name: 'love', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Search for Event`
  String get SearchForEvent {
    return Intl.message(
      'Search for Event',
      name: 'SearchForEvent',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get Light {
    return Intl.message('Light', name: 'Light', desc: '', args: []);
  }

  /// `Dark`
  String get dark {
    return Intl.message('Dark', name: 'dark', desc: '', args: []);
  }

  /// `Log Out`
  String get logOut {
    return Intl.message('Log Out', name: 'logOut', desc: '', args: []);
  }

  /// `Create Event`
  String get CreateEvent {
    return Intl.message(
      'Create Event',
      name: 'CreateEvent',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get Title {
    return Intl.message('Title', name: 'Title', desc: '', args: []);
  }

  /// `Event Title`
  String get EventTitle {
    return Intl.message('Event Title', name: 'EventTitle', desc: '', args: []);
  }

  /// `Description`
  String get Description {
    return Intl.message('Description', name: 'Description', desc: '', args: []);
  }

  /// `Event Description`
  String get EventDescription {
    return Intl.message(
      'Event Description',
      name: 'EventDescription',
      desc: '',
      args: [],
    );
  }

  /// `Event Date`
  String get EventDate {
    return Intl.message('Event Date', name: 'EventDate', desc: '', args: []);
  }

  /// `Event Time`
  String get EventTime {
    return Intl.message('Event Time', name: 'EventTime', desc: '', args: []);
  }

  /// `Choose Date`
  String get ChooseDate {
    return Intl.message('Choose Date', name: 'ChooseDate', desc: '', args: []);
  }

  /// `Choose Time`
  String get ChooseTime {
    return Intl.message('Choose Time', name: 'ChooseTime', desc: '', args: []);
  }

  /// `Location`
  String get Location {
    return Intl.message('Location', name: 'Location', desc: '', args: []);
  }

  /// `Choose Event Location`
  String get ChooseEventLocation {
    return Intl.message(
      'Choose Event Location',
      name: 'ChooseEventLocation',
      desc: '',
      args: [],
    );
  }

  /// `Add Event`
  String get AddEvent {
    return Intl.message('Add Event', name: 'AddEvent', desc: '', args: []);
  }

  /// `Tap on Location To Select`
  String get TapOnLocationToSelect {
    return Intl.message(
      'Tap on Location To Select',
      name: 'TapOnLocationToSelect',
      desc: '',
      args: [],
    );
  }

  /// `Event Details`
  String get EventDetails {
    return Intl.message(
      'Event Details',
      name: 'EventDetails',
      desc: '',
      args: [],
    );
  }

  /// `Edit Event`
  String get EditEvent {
    return Intl.message('Edit Event', name: 'EditEvent', desc: '', args: []);
  }

  /// `  Dont have account ?`
  String get DontHaveAccountQuestion {
    return Intl.message(
      '  Dont have account ?',
      name: 'DontHaveAccountQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get ForgetPasswordQuestion {
    return Intl.message(
      'Forget Password?',
      name: 'ForgetPasswordQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get AlreadyHaveAccountQuestion {
    return Intl.message(
      'Already have account?',
      name: 'AlreadyHaveAccountQuestion',
      desc: '',
      args: [],
    );
  }

  /// `sign in Successfully`
  String get signInSuccessfully {
    return Intl.message(
      'sign in Successfully',
      name: 'signInSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Email created successfully`
  String get emailcreatedsuccessfully {
    return Intl.message(
      'Email created successfully',
      name: 'emailcreatedsuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get fieldIsRequired {
    return Intl.message(
      'Field is required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `The passwords do not match`
  String get Thepasswordsdonotmatch {
    return Intl.message(
      'The passwords do not match',
      name: 'Thepasswordsdonotmatch',
      desc: '',
      args: [],
    );
  }

  /// `No events created yet!`
  String get noEventsCreatedYet {
    return Intl.message(
      'No events created yet!',
      name: 'noEventsCreatedYet',
      desc: '',
      args: [],
    );
  }

  /// `No favorite events yet!`
  String get NoFavoriteEventsYet {
    return Intl.message(
      'No favorite events yet!',
      name: 'NoFavoriteEventsYet',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
