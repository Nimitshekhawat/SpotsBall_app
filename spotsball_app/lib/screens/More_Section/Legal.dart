
import 'package:flutter/material.dart';

import '../custom_widget.dart';
import 'Privacy_policy.dart';
import 'Terms_of_play.dart';

class Legal extends StatefulWidget {
  const Legal({super.key});

  @override
  State<Legal> createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Legal', value: 0, context: context)
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


                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> terms_of_play()));
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          Expanded(
                            flex: 5,
                              child: TextRoboto500_14(fontsize: 14, text: 'Terms Of Play',color: Colors.black)),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Image.asset('assets/more_section_images/Right_arrow.png'))

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> privacy_policy()));
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          Expanded(
                              flex: 5,
                              child: TextRoboto500_14(fontsize: 14, text: 'Privacy Policy',color: Colors.black)),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Image.asset('assets/more_section_images/Right_arrow.png'))

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> terms_of_play()));
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          Expanded(
                              flex: 5,
                              child: TextRoboto500_14(fontsize: 14, text: 'Cookie Policy',color: Colors.black)),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Image.asset('assets/more_section_images/Right_arrow.png'))

                        ],
                      ),
                    ),
                  ),
                ),





              ],

            ),
          ),
        ),
      ),
    );
  }
}
