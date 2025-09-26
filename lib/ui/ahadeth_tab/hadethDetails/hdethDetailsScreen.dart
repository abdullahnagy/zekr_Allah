import 'package:flutter/material.dart';
import 'package:zekr_allah/ui/ahadeth_tab/hadethModel.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routename="ahadethDetailsScreen";

  // allAhadeth ahadethtitle;
  //
  // HadethDetailsScreen({required this.ahadethtitle});
  @override
  Widget build(BuildContext context) {
    allAhadeth args=ModalRoute.of(context)?.settings.arguments as allAhadeth;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Card(
        child: Text(args.content),
      ),
    );
  }
}
