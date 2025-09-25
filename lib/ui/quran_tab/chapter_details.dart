import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zekr_allah/ui/quran_tab/chapternames.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName="Chapter_details";

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    chapterDetailsArgs args = ModalRoute.of(context)?.settings.arguments as chapterDetailsArgs;
    if(verses.isEmpty)
readFile(args.index);
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bgall.png"),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title:Text( args.ChapterTitle),

        ),

        body: verses.isEmpty? Center(child: CircularProgressIndicator()) :
        ListView.separated(itemBuilder: (context, index) => Text(verses[index]),

            separatorBuilder: (context, index) => Container(color: Colors.red,), itemCount: verses.length),

      ),
    );
  }

  void readFile(int index) async{
    String fileContent=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> suraLines=fileContent.split("\n");
    verses=suraLines;
    setState(() {

    });

  }
}
