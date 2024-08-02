
import 'package:flutter/material.dart';

import '../custom_widget.dart';

class customerreview extends StatefulWidget {
  const customerreview({super.key});

  @override
  State<customerreview> createState() => _customerreviewState();
}

class _customerreviewState extends State<customerreview> {

  final double TrustScore=4;
  final int Reviews= 10000;
  List<String> Starcolor = [
    'assets/more_section_images/white_star.png',
    'assets/more_section_images/white_star.png',
    'assets/more_section_images/white_star.png',
    'assets/more_section_images/white_star.png',
    'assets/more_section_images/white_star.png',
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Starcolor[0]= 'assets/more_section_images/white_star.png';
    Starcolor[1]= 'assets/more_section_images/white_star.png';
    Starcolor[2]= 'assets/more_section_images/white_star.png';
    Starcolor[3]= 'assets/more_section_images/white_star.png';
    Starcolor[4]= 'assets/more_section_images/white_star.png';
    Review_star(TrustScore);
  }

  void Review_star(double value){
    setState(() {
        for(int j=0; j < value ;j++){
          Starcolor[j] = 'assets/more_section_images/black_Star.png';
        }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Customer Reviews', value: 0, context: context)
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    
                    height: 27,
                    width: MediaQuery.of(context).size.width*0.60,
                    child: Image.asset('assets/images/spotslogo_small.png',fit: BoxFit.fill,),
                  ),
              
              
                  SizedBox(
                    height: 34,
                  ),
              
                  Container(
                    height:40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) {
              
                      return Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color:  Color(0xFF7CAB05),
                            ),
                            child: Center(
                              child: Image.asset(Starcolor[index]),
                            ),
              
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      );
              
              
                    },
                    itemCount: 5,),
                  ),
              
              
              
                  SizedBox(
                    height: 20,
                  ),
              
                  TextRoboto500_14(fontsize: 16, text: ' Trust Score : ${TrustScore}',color: Color(0xFF717171)),
                  TextRoboto500_14(fontsize: 16, text: '${Reviews} Reviews ',color: Color(0xFF717171)),
              
                  SizedBox(
                    height: 18,
                  ),
                  Custombtn_h50_wfull(context: context, text: 'View All Reviews', textcolor: Colors.white),
              
                  SizedBox(
                    height: 16,
                  ),
                  TextRoboto700_32(fontsize: 20, text: 'Testimonials',color: Colors.black),
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
                  TextRoboto600_16(fontsize: 20, text: 'Abinas Nayak',color: Color(0xFF595959)),
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
      ),
    );
  }
}
