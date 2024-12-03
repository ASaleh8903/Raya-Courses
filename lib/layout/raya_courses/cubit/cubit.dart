import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raya_courses/Modules/raya_courses/My%20cart/mycart_screen.dart';
import 'package:raya_courses/Modules/raya_courses/home/home_screen.dart';
import 'package:raya_courses/layout/raya_courses/cubit/state.dart';
import '../../../Modules/raya_courses/courses/courses_screen.dart';
import '../../../Modules/raya_courses/settings/settings_screen.dart';


class RayaCubit extends Cubit<RayaStates> {
  RayaCubit(RayaStates initialState,) : super(initialState);

  static RayaCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreens = [
    HomeScreen(),
    CoursesScreen(),
    MyCartScreen(),
    SettingsScreen()
  ];

  void changeNavBar(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

}
