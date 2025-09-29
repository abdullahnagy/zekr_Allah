import 'package:flutter/material.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         getSelectdLanguage("English"),
          SizedBox(height: 8,),
          getUnSelectedLanguage("العربية"),
        ],
      ),
    );
  }
}

Widget getSelectdLanguage (String selectedLanguge){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(selectedLanguge,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Icon(Icons.check)
    ],
  );

}


Widget getUnSelectedLanguage (String unSelectedLanguage){
  return   Text(unSelectedLanguage,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);


}


