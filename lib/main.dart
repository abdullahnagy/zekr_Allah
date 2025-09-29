import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethDetails/hdethDetailsScreen.dart';
import 'package:zekr_allah/ui/home_page.dart';
import 'package:zekr_allah/ui/quran_tab/chapter_details.dart';
import 'package:zekr_allah/ui/style/my_theme_data.dart';

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
      theme:myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,

       themeMode: ThemeMode.light,



//////////////////////////////////////////////////////////////////////
    routes: {
        ChapterDetailsScreen.routeName : (context) => ChapterDetailsScreen(),
      HadethDetailsScreen.routename: (context)=>HadethDetailsScreen(),
      HomePage.routeName:(_) => HomePage(),




    },

      initialRoute: HomePage.routeName,



    );
  }
}
