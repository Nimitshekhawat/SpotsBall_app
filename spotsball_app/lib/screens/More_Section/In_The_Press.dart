
import 'package:flutter/material.dart';

import '../custom_widget.dart';

class InThePress extends StatefulWidget {
  const InThePress({super.key});

  @override
  State<InThePress> createState() => _InThePressState();
}

class _InThePressState extends State<InThePress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'In The Press', value: 0, context: context)
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
                TextRoboto700_32(
                    fontsize: 20,
                    text:'Eastern Daily Press',
                    color: Colors.black),

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 203,
                  width:double.infinity,

                  child: Image.asset('assets/more_section_images/abhinas_nayek_video_pic.png',fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: 20,
                ),
                TextRoboto500_14(fontsize: 16,
                    fontweight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),

                    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                SizedBox(
                  height: 20,
                ),

                InkWell(
                    onTap: (){

                    },
                    child: Custombtn_h50_wfull(context: context, text: 'See Full Article', textcolor: Colors.white))






              ],

            ),
          ),
        ),
      ),
    );
  }
}
