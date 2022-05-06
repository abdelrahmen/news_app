import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/states.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewsCubit2 extends Cubit<NewsState> {
  NewsCubit2() : super(NewsInitialState());

  static NewsCubit2 get(context) => BlocProvider.of(context);


  bool isDark = false;
  ThemeMode appMode = ThemeMode.light;
  void changeAppMode(){
    isDark = !isDark;
    appMode = isDark?ThemeMode.dark:ThemeMode.light;
    emit(NewsChangeAppModeState());
    setDarkMode(isDark);
  }
  
  Future<void> setDarkMode(bool darkState) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', darkState);
  }

  Future<void> getDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isDarkMode = prefs.getBool('darkMode');
    appMode = isDarkMode!?ThemeMode.dark:ThemeMode.light;
    isDark = isDarkMode;
    emit(InitialDarkModeState());
  }
}