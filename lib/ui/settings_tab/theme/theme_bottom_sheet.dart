import 'package:flutter/material.dart';

class themeBottomSheet extends StatefulWidget {
  const themeBottomSheet({super.key});

  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          getSelectedItem("Light"),

          SizedBox(height: 8,),
          getUnSelectedTheme("Dark")
          
          
          
          
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
