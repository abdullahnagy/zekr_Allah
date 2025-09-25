import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/quran_tab/chapternames.dart';

class QuranTab extends StatelessWidget {
  List<String> SuraNames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          Expanded(
            flex: 1,
            child: Image(image: AssetImage("assets/images/quran_header_icn.png",),
            

              ),
          ),


          Container(
            margin: EdgeInsets.symmetric(horizontal:50,vertical: 8),
            width: double.infinity,
            height: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text("Chapter Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Container(
            margin: EdgeInsets.symmetric(horizontal:50,vertical: 8),
            width: double.infinity,
            height: 2,
            color: Theme.of(context).colorScheme.primary,
          ),

          Expanded(
            flex: 3,
            child: ListView.separated(itemBuilder: (context, index) =>ChapterTitles(ChapterTitle: SuraNames[index],index: index,) ,
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal:50,vertical: 8),
                  width: double.infinity,
                  height: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),

                itemCount: SuraNames.length),
          )
        ],
      ),
    );
  }
}
