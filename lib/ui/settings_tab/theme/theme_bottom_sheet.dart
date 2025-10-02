import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zekr_allah/providers/setting_provider.dart';

class themeBottomSheet extends StatefulWidget {
  const themeBottomSheet({super.key});

  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    settingProvider provider=Provider.of<settingProvider>(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          InkWell(
              onTap: (){
                provider.changeApplicationTheme(ThemeMode.light);
              },
              child: provider.currentTheme==ThemeMode.light ? getSelectedItem("light"):getUnSelectedTheme("light") ,

              ),

          SizedBox(height: 8,),


          InkWell(
              onTap: (){
                provider.changeApplicationTheme(ThemeMode.dark);

              },
            child: provider.currentTheme==ThemeMode.dark ? getSelectedItem("dark"):getUnSelectedTheme("dark") ,


    )
          
          
          
          
        ],
      ),
    );
  }
}

Widget getSelectedItem(String selectedtheme){
return  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(selectedtheme,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    Icon(Icons.check)
  ],
);

}


Widget getUnSelectedTheme(String unSelectedTheme){
  return   Text(unSelectedTheme,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);


}

