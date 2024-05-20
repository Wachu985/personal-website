import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  PageController pageController = PageController();

  AppCubit() : super(AppState.initialState());
  void initialListener() {
    pageController.addListener(() {
      if (pageController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        emit(state.copyWith(showAppbar: false));
      } else {
        emit(state.copyWith(showAppbar: true));
      }
    });
  }

  void scrollToIndex(int index) {
    pageController.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  void toogleDarkMode() {
    emit(state.copyWith(darkMode: !state.darkMode));
  }

  void dispose() {
    pageController.dispose();
  }
}
