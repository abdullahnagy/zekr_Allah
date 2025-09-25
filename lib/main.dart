import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/home_page.dart';
import 'package:zekr_allah/ui/quran_tab/chapter_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
////////////////////////////////////////////////////////////////////
      theme: ThemeData(
        primaryColor: Color(0xffB7935F) ,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffB7935F),
        primary: Color(0xffB7935F),
              onPrimary: Colors.white,
          secondary: Color(0x90B7935F),
            onSecondary: Colors.black,

        ),




        
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,centerTitle: true,
            titleTextStyle: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 30 )),

        scaffoldBackgroundColor: Colors.transparent,

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,size:30.0,
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        )

      ),
//////////////////////////////////////////////////////////////////////
    routes: {
        ChapterDetailsScreen.routeName : (context) => ChapterDetailsScreen(),
      HomePage.routeName:(_) => HomePage(),


    },

      initialRoute: HomePage.routeName,



    );
  }
}
