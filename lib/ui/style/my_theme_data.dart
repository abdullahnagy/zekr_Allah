import 'package:flutter/material.dart';

class myThemeData{
 static ThemeData lightTheme =  ThemeData(
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

  );
  static ThemeData darkTheme =  ThemeData(
      primaryColor: Color(0xff141A2E) ,

      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff141A2E),
        primary: Color(0xff141A2E),
        onPrimary: Colors.white,
        secondary: Colors.yellow,
        onSecondary: Colors.black,
      ),




      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,centerTitle: true,
          titleTextStyle: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 30 )),

      scaffoldBackgroundColor: Colors.transparent,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        selectedIconTheme: IconThemeData(
          color: Colors.yellow,size:30.0,
        ),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
      )

  );


}