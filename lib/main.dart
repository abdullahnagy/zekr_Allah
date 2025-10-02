import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zekr_allah/providers/setting_provider.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethDetails/hdethDetailsScreen.dart';
import 'package:zekr_allah/ui/home_page.dart';
import 'package:zekr_allah/ui/quran_tab/chapter_details.dart';
import 'package:zekr_allah/ui/style/my_theme_data.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => settingProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    settingProvider provider = Provider.of<settingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
////////////////////////////////////////////////////////////////////
      theme:myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,

       themeMode: provider.currentTheme,



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
