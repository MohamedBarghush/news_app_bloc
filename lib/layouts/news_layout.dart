import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app_bloc/cubit/cubit.dart';
import 'package:news_app_bloc/cubit/states.dart';

class NewsLayout extends StatelessWidget {
  final bool? isDark;

  const NewsLayout({super.key, required this.isDark});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit()..changeAppMode(fromShared: isDark),
        ),
        BlocProvider<NewsCubit>(
          create: (context) => NewsCubit()..getBusiness()..changeBottomNavBar(0),
        ),

      ],
      child: BlocBuilder<AppCubit, AppStates>(
        // listener: (context, state) {  },
        builder: (context, state) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
            appBarTheme: const AppBarTheme (
              backgroundColor: Colors.white,
              elevation: 0.0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
              ),
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurple,
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 20.0,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            primarySwatch: Colors.deepPurple,
            scaffoldBackgroundColor: HexColor('333739'),
            appBarTheme: AppBarTheme (
              backgroundColor: HexColor('333739'),
              elevation: 0.0,
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: HexColor('333739'),
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.dark,
              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              backgroundColor: HexColor('333739'),
              elevation: 20.0,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          themeMode: context.watch<AppCubit>().isDark ? ThemeMode.dark : ThemeMode.light,
        
        ///////////////////////////////////////////////////////////////////
        
          home: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('News App'),
                actions: [
                  IconButton(
                    onPressed: () { },
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {
                      AppCubit.get(context).changeAppMode();
                    },
                    icon: const Icon(Icons.brightness_4_outlined),
                  ),
                ],
              ),
              body: BlocBuilder<NewsCubit, NewsStates>(
                builder: (context, state) {
                  var cubit = NewsCubit.get(context);
                  return cubit.screens[cubit.currentIndex];
                },
              ),
              bottomNavigationBar: BlocBuilder<NewsCubit, NewsStates>(
                builder: (context, state) {
                  var cubit = NewsCubit.get(context);
                  
                  return BottomNavigationBar(
                    currentIndex: cubit.currentIndex,
                    items: cubit.bottomItems,
                    onTap: (index) {
                      cubit.changeBottomNavBar(index);
                    },
                  );
                }
              ),
            )
          ),
        )
      ),
    );
  }
}