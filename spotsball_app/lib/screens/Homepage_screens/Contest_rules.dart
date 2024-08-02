
import 'package:flutter/material.dart';
import '../custom_widget.dart';



class contest_rules extends StatefulWidget {
  const contest_rules({super.key});

  @override
  State<contest_rules> createState() => _contest_rulesState();
}

class _contest_rulesState extends State<contest_rules> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'contest_rules', value: 0, context: context)
      ),

      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),Container(

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          child:  Image.asset('assets/images/Ball.png',height: 15.37,),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextRoboto500_14(fontsize: 14,
                            fontweight: FontWeight.w400,
                            color: Color(0xFF6A6A6A),
                            text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
