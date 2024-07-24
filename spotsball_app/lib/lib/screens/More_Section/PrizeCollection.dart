
import 'package:flutter/material.dart';
import 'package:spotsball_app/lib/screens/custom_widget.dart';

class prizeCollection extends StatefulWidget {
  const prizeCollection({super.key});

  @override
  State<prizeCollection> createState() => _prizeCollectionState();
}

class _prizeCollectionState extends State<prizeCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prize collection'),
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
                  height: 40,
                  color: Colors.black,
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
