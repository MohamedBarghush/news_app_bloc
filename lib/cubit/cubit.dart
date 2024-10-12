import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/cubit/states.dart';
import 'package:news_app_bloc/modules/business/business_screen.dart';
import 'package:news_app_bloc/modules/science/science_screen.dart';
import 'package:news_app_bloc/modules/settings_screen/settings_screen.dart';
import 'package:news_app_bloc/modules/sports/sports_screen.dart';
import 'package:news_app_bloc/network/dio_helper.dart';
import 'package:news_app_bloc/network/local/cache_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
    // const BottomNavigationBarItem(
    //   icon: Icon(Icons.settings),
    //   label: 'Settings',
    // ),
  ];

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    const SettingsScreen(),
  ];

  void changeBottomNavBar (int index) {
    currentIndex = index;
    if (index == 1) getSports();
    if (index == 2) getScience();

    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(NewsGetBusinessLoadingState());

    if (business.isNotEmpty) {
      emit(NewsGetBusinessSuccessState());
      return;
    }

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        // 'country': 'eg',
        'category': 'business',
        'apiKey': 'e21a3329faba47a49ad7cf2200689649'
      },
    ).then((value) {
      business = value.data['articles'];
      // print(business[0]['title']);
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      // print('Error is: ${error.toString()}');
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> science = [];

  void getScience() {
    emit(NewsGetScienceLoadingState());

    if (science.isNotEmpty) {
      emit(NewsGetScienceSuccessState());
      return;
    }

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        // 'country': 'eg',
        'category': 'science',
        'apiKey': 'e21a3329faba47a49ad7cf2200689649'
      },
    ).then((value) {
      science = value.data['articles'];
      // print(business[0]['title']);
      emit(NewsGetScienceSuccessState());
    }).catchError((error) {
      // print('Error is: ${error.toString()}');
      emit(NewsGetScienceErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];

  void getSports() {

    emit(NewsGetSportsLoadingState());

    if (sports.isNotEmpty) {
      emit(NewsGetSportsSuccessState());
      return;
    }

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        // 'country': 'eg',
        'category': 'sports',
        'apiKey': 'e21a3329faba47a49ad7cf2200689649'
      },
    ).then((value) {
      sports = value.data['articles'];
      // print(business[0]['title']);
      emit(NewsGetSportsSuccessState());
    }).catchError((error) {
      // print('Error is: ${error.toString()}');
      emit(NewsGetSportsErrorState(error.toString()));
    });
  }
}

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(AppChangeModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(AppChangeModeState());
      });
    }
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('Error in ${bloc.runtimeType}: $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('${bloc.runtimeType} $transition');
  }
}
