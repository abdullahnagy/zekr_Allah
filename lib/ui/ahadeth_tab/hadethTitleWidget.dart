import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethDetails/hdethDetailsScreen.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethModel.dart';

class Hadethtitlewidget extends StatelessWidget {
  static const String routename ="hadethTitle";
  allAhadeth ahadethitem;

  Hadethtitlewidget({required this.ahadethitem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routename,
        arguments: ahadethitem);
      },
      child: Container(
        alignment: Alignment.center,
        child:
        Text(ahadethitem.title),
      ),
    );
  }
}
