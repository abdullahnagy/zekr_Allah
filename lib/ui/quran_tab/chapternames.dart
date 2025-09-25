import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/quran_tab/chapter_details.dart';

class ChapterTitles extends StatelessWidget {
  String ChapterTitle;
  int index;

ChapterTitles({required this.ChapterTitle,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
        arguments: chapterDetailsArgs(ChapterTitle: ChapterTitle, index: index)
        );
      },
      child: Container(
        child: Text(

          ChapterTitle,textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,

          ),),
      ),
    );
  }
}

class chapterDetailsArgs{
  String ChapterTitle;
  int index;
  chapterDetailsArgs({required this.ChapterTitle,required this.index});
}