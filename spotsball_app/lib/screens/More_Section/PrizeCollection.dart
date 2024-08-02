
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_widget.dart';

class prizeCollection extends StatefulWidget {
  const prizeCollection({super.key});

  @override
  State<prizeCollection> createState() => _prizeCollectionState();
}

class _prizeCollectionState extends State<prizeCollection> {
  TextEditingController Search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Prize Collection', value: 0, context: context)
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
                TextRoboto500_14(
                    fontsize: 16,
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen printer took a galley book.',
                    fontweight: FontWeight.w400,color: Color(0xFF6A6A6A)),
        
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  child: Row(
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(

                          // color: Colors.blue,
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.68,

                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Center(
                                child: Container(
                                    child: Image.asset('assets/images/Searchicon.png',height: 15,fit: BoxFit.fitHeight,)),
                              ),
                              Container(
                                // color: Colors.white,

                                width: MediaQuery.of(context).size.width*0.54,

                                child: TextField(
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF898989),
                                          fontWeight: FontWeight.w400)),

                                  controller: Search,
                                  keyboardType: TextInputType.text,

                                  decoration: InputDecoration(
                                    hintText: 'Search',

                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF959595),
                                            fontWeight:  FontWeight.w400)),
                                    border: InputBorder.none,
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                    isDense: true,
                                  ),
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),


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
        
                    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
                
        
        
              ],
        
            ),
          ),
        ),
      ),
    );
  }
}
