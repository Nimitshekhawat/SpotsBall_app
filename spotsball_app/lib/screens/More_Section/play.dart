
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../custom_widget.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowMaterialGrid: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: play(),
    );
  }
}



class play extends StatefulWidget {
  const play({super.key});

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {

  double  flexibleheight_top=40.3;
  double flexibleheight_bottom=0;
  late int indexvalue=0;

  List<bool> isIconClicked=[false, false,false,false,false];

  List<String> Icon_img_path = [
    'assets/more_section_images/User_guide.png',
    'assets/more_section_images/play_list_slider_icon.png',
    'assets/more_section_images/Changed_guide_line_ color.png',
    'assets/more_section_images/Play_settings.png',
    'assets/more_section_images/play_restart_icon.png',
  ];
  List<Color> changecolor=[
    Colors.black,
    Color(0xFFFF0000),
  ];

  List<Map<String, dynamic >> playticketdata=[
    {
      'Winprice': 1000000,
      'X_cord':0,
      'Y_cord':0,
    },
    {
      'Winprice': 3000000,
      'X_cord':1111,
      'Y_cord':1111,
    },
    {
      'Winprice': 6000000,
      'X_cord':0,
      'Y_cord':0,
    },
    {
      'Winprice': 7000000,
      'X_cord':0,
      'Y_cord':0,
    }


  ];

  Widget _build_playticket(BuildContext context,int index){
    return  Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              color: Color(0xFFAB0505),
              height: 142,
              width:152,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [


                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                      child: Textubuntu700_32(fontsize: 15, text: '${playticketdata[index]['Winprice']} Contest')),
                   SizedBox(
                     height: 7,
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [

                       Center(child: TextRoboto400_16(fontsize: 14, text: 'X :${playticketdata[index]['X_cord']},',color: Colors.white)),

                       Center(child: TextRoboto400_16(fontsize: 14, text: 'Y:${playticketdata[index]['Y_cord']}',color: Colors.white)),
                     ],
                   ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                   height: 34,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[

                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 34,
                            width:34,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(child: Image.asset('assets/more_section_images/play_restart_icon.png',height: 15,)),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 34,
                            width:34,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: Center(child: Image.asset('assets/more_section_images/Play_plus_icon.png',height: 15,)),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 34,
                            width:34,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: Center(child: Image.asset('assets/more_section_images/Play_delete_icon.png',height: 15,)),
                          ),
                        ),

                      ]
                    ),
                  )


                ],

              )
            ),
          ),
        ],
      ),
    );

  }
  void _onItemFocus(int index) {
    setState(() {
      indexvalue=index;
    });
    // Example action
    // Handle item focus logic here
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Play', value: 0, context: context)
      ),

      body: SafeArea(

        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isIconClicked[1]||isIconClicked[2]?Container(): SizedBox(
                height:flexibleheight_top,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.46,
                width:MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.46,
                      width:MediaQuery.of(context).size.width,

                      child: Image.asset('assets/images/CatchingImage.png',fit: BoxFit.fill,),),
                  ],

                ),
              ),
              isIconClicked[1]||isIconClicked[2]?Container(height: 30,):SizedBox(
                height: flexibleheight_bottom=MediaQuery.of(context).size.height*0.15,
              ),
              // isIconClicked[0]?Container(height: 20,):SizedBox(
              //   height: flexibleheight_bottom,
              // ),

              Container(

                child:isIconClicked[2]?
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: Container(
                    height: 76,
                    width:double.infinity,
                    color: Color(0xFFFAFAFA),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:18,
                        ),
                        Container(
                          width: 47,
                          height:47,

                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            color:changecolor[1],
                          )
                        ),
                        SizedBox(
                          width:10,
                        ),
                        TextRoboto400_16(fontsize: 12, text: 'Tap to change guide line color',color: Colors.black)

                      ],
                    ),
                  ),
                ):Container(height:0.2)
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 12),
                child: Container(
                  height:62,
                  width:double.infinity,
                  child: Center(
                    child: ListView.builder( scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context,index){

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width:10,
                          ),
                          InkWell(
                            onTap: (){
                              isIconClicked[index]=true;
                              setState(() {
                                if(index==0){
                                  isIconClicked[1]=false;
                                  isIconClicked[2]=false;
                                  isIconClicked[3]=false;
                                  isIconClicked[4]=false;

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return Center(
                                        child: Container(
                                          height:369,
                                          width: 365,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),

                                              Container(
                                                height: 30,
                                                color: Colors.green,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children:[
                                                    // Crossbtn(context)
                                                  ],
                                                ),
                                              ),


                                              Center(child: Textubuntu700_32(fontsize: 20, text: 'User Guide' ,color: Color(0xFF00326C) ))

                                            ],
                                          ),

                                        ),
                                      );
                                    }
                                  );
                                }
                                if(index==1){
                                  indexvalue=0;
                                  isIconClicked[0]=false;
                                  isIconClicked[2]=false;
                                  isIconClicked[3]=false;
                                  isIconClicked[4]=false;
                                }
                                if(index==2){
                                  isIconClicked[0]=false;
                                  isIconClicked[1]=false;
                                  isIconClicked[3]=false;
                                  isIconClicked[4]=false;
                                }
                              });
                            },
                           child: Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                    color: isIconClicked[index]? Color(0xFF7CAB05) : Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 1,
                                          blurRadius: 4,
                                          color: Colors.black45
                                      )
                                    ],
                                    shape: BoxShape.circle
                                ),
                                child: Center(child: Image.asset(Icon_img_path[index],height: 29,width: 30,color: isIconClicked[index]? Colors.white: null,)),
                              ),
                          ),
                          SizedBox(
                            width:16,
                          ),


                        ],
                      );
                    }),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:18,right: 18,top: 16),
                child: Custombtn_h50_wfull(context: context, text: 'Place', textcolor: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Container(
                child: isIconClicked[1]? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 149,
                        child: ScrollSnapList(
                          onItemFocus: _onItemFocus,
                          itemSize: 150,
                          itemBuilder: _build_playticket,

                          itemCount: playticketdata.length,
                          dynamicItemSize: true,
                          // dynamicSizeEquation: customEquation, //optional
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextRoboto600_16(fontsize: 16, text: '${indexvalue+1}',color: Color(0xFF00AD11)),
                        TextRoboto600_16(fontsize: 16, text: '/${playticketdata.length}',color: Color(0xFF00326C)),
                      ],
                    )

                  ],
                ) : Container(height: 10,)
              ),




            ],


          ),
        ),
      ),
    );
  }
}
