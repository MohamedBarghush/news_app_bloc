import 'package:flutter/material.dart';
import 'package:news_app_bloc/cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/layouts/news_layout.dart';
import 'package:news_app_bloc/network/dio_helper.dart';
import 'package:news_app_bloc/network/local/cache_helper.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  // Makes sure everything in this function is executed before running the app
  WidgetsFlutterBinding.ensureInitialized();

  bool? isDark = CacheHelper.getBoolean(key: 'isDark');

  runApp(NewsLayout(isDark: isDark));
}
