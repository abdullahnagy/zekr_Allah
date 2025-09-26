import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethModel.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethTitleWidget.dart';

class AhadethTab extends StatefulWidget  {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<allAhadeth> allahaaadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allahaaadeth.isEmpty) loadHadthFile();
    return Container(
      child: Column(
        children: [

          Expanded(
            flex: 1,
              child: Image.asset("assets/images/hadith_header.png")),

          Container(
            width: double.infinity,
            alignment: Alignment.center,

            decoration: BoxDecoration(


                border: Border.symmetric(horizontal: BorderSide(color: Colors.black))),
            child: Text("Ahadeth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),



          Expanded(
            flex: 3,
            child:

            allahaaadeth.isEmpty ? Center(child: CircularProgressIndicator(),) :


            ListView.separated(

                itemBuilder: (context, index) =>  Hadethtitlewidget(ahadethitem: allahaaadeth[index]),
                separatorBuilder: (context, index) =>Container(
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 66),
                  width: double.infinity,
                  height: 2,
                ) ,
                itemCount: allahaaadeth.length),
          )



        ],




      ),
    );
  }

  void loadHadthFile () async{
    String loadAhadeth= await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> AhadethList=loadAhadeth.trim().split("#");

    for(int i=0;i<AhadethList.length;i++){
      String singleHadeth=AhadethList[i];
      List<String> hadethLines=singleHadeth.trim().split("\n");
      String hadethTitle=hadethLines[0];
      hadethLines.removeAt(0);
      String hadethcontent=hadethLines.join("\n");
      allAhadeth h =allAhadeth(title: hadethTitle, content: hadethcontent);
      allahaaadeth.add(h);

    }

    setState(() {

    });


  }
}
