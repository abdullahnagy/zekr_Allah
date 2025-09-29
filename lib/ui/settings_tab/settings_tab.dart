import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/settings_tab/language/language_bottom_shet.dart';
import 'package:zekr_allah/ui/settings_tab/theme/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Theming"),
          Padding(padding: EdgeInsets.all(3)),





           InkWell(
             onTap: (){
               showThemeBottomSheet();
             },
             child: Container(
               padding: EdgeInsets.all(8),
               width: double.infinity,

               decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
                 borderRadius: BorderRadius.circular(26),

               ),

                 child: Text("Light")),
           ),

          SizedBox(height: 20,),








          Text("Language"),
          Padding(padding: EdgeInsets.all(3)),





          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(26),

                ),

                child: Text("English")),
          ),


        ],



      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context,
      builder: (context)=> themeBottomSheet());

  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder:(context) => languageBottomSheet());

  }
}
