import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zekr_allah/providers/setting_provider.dart';
import 'package:zekr_allah/ui/ahadeth_tab/ahadeth_widget.dart';
import 'package:zekr_allah/ui/quran_tab/quran_tab.dart';
import 'package:zekr_allah/ui/radio_tab/RadioTab.dart';
import 'package:zekr_allah/ui/settings_tab/settings_tab.dart';
import 'package:zekr_allah/ui/tasbeh_tab/TasbehTab.dart';

class HomePage extends StatefulWidget {
  static const String routeName="homePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab=0;

  List<Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),

  ];

  @override
  Widget build(BuildContext context) {

    settingProvider provider = Provider.of<settingProvider>(context);

    return Container(




      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(

          provider.currentTheme ==  ThemeMode.light
              ?"assets/images/bgall.png"
              : "assets/images/home_dark_background.png"                 ),



            fit: BoxFit.fill)
      ),

      child: Scaffold(


        appBar: AppBar(title: Text("ذِكرِ اللَّهِ"),),





        body:
        tabs[selectedTab],





       bottomNavigationBar: BottomNavigationBar(
         currentIndex: selectedTab,
         onTap:(value) {
           selectedTab=value;
           setState(() {

           });

         },

         backgroundColor:Color(0xffB7935F),
         items: [
           BottomNavigationBarItem(         backgroundColor:Theme.of(context).primaryColor      ,
               icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),label: "Quran"),

           BottomNavigationBarItem(         backgroundColor:Theme.of(context).primaryColor,
               icon: ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")),label: "Ahadeth"),

           BottomNavigationBarItem(         backgroundColor:Theme.of(context).primaryColor,
               icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "Tasbeh"),

         BottomNavigationBarItem(         backgroundColor:Theme.of(context).primaryColor,
             icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio"),


         BottomNavigationBarItem(         backgroundColor:Theme.of(context).primaryColor,
             icon: Icon(Icons.settings),label: "Settings"),



       ],),





      ),
    );
  }
}
