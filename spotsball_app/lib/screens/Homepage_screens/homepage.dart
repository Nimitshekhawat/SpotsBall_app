
import 'package:flutter/material.dart';
import 'package:spotsball_app/screens/Homepage_screens/How_to_play.dart';
import 'package:spotsball_app/screens/More_Section/Morepage.dart';
import '../custom_widget.dart';
import 'Buy_your_tickets.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'Contest_rules.dart';



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
      home: homepage(),
    );
  }
}



class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int initialActiveIndex=1;
  List<Color> Helpcolor=[
    Colors.white,Color(0xFF7CAB05)
  ];
  List<Color> Homecolor=[
    Colors.white,Color(0xFF7CAB05)
  ];
  List<Color> Morecolor=[
    Colors.white,Color(0xFF7CAB05)
  ];
  Color helpcolor=Colors.white;
  Color homecolor=Color(0xFF7CAB05);
  Color morecolor=Colors.white;
  @override


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Logo_bar(
          context: context,
          value: 0,

        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:270 ,

              width: double.infinity,
              child: Image.asset('assets/images/Contest_ends_home.png',fit: BoxFit.fill,),
            ),
            Container(
              height: 148,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow: [
              BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 3),)]), // changes position of shadow

              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 28,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ball.png',height: 15.37,),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                              child: TextRoboto700_32(fontsize: 16,
                                  text: 'Every Week' ,
                                  color: Color(0xFF7CAB05)))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 28,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ball.png',height: 15.37,),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                              child: TextRoboto500_14(fontsize: 14,
                                  text: '₹1,50,000 Jackpot Prize!' ,
                                  color: Color(0xFF6A6A6A)))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [

                    ],
                  ),
                  Container(
                    height: 28,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ball.png',height: 15.37,),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                              child: TextRoboto500_14(fontsize: 14,
                                  text: 'Ticket Entry Fee: ₹99 Only' ,
                                  color: Color(0xFF6A6A6A)))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 28,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/Ball.png',height: 15.37,),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                              child: TextRoboto500_14(fontsize: 14,
                                  text: 'We pay your GST!' ,
                                  color: Color(0xFF6A6A6A)))
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> howtoplay()));
                    },
                    child: Custombtn_h50_wfull(
                        context: context,
                        text: 'How to Play? Video',
                        textcolor:Colors.white,
                        btncolor: Color(0xFFBD0000)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> contest_rules()));
                    },
                    child: Custombtn_h50_wfull(
                        context: context,
                        text: 'Contest Rules',
                        textcolor:Colors.white,
                        btncolor: Color(0xFF00326C)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> buyyourtickets()));
                    },
                    child: Custombtn_h50_wfull(
                      context: context,
                      text: 'Buy Your Tickets',
                      textcolor:Colors.white,

                    ),
                  ),



                ],
              ),
            )


          ],
        ),
      ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(
                icon: ImageIcon(
                  color: helpcolor,
                  AssetImage('assets/images/Bottom_help_white.png'),
                  size: 30,
                ),
            title: 'Help'),

            TabItem(icon:ImageIcon(
              color: homecolor,

            AssetImage('assets/images/Bottom_home_white.png'),
            size: 24,
            ),
             title: 'Home'),
            TabItem(icon:ImageIcon(
              color: morecolor,
              AssetImage('assets/images/Bottom_more_white.png'),
              size: 30,
            ),
                title:'More'),
            ],
            height: 70,
            top: -20,

            curveSize: 20,
            initialActiveIndex: 1,
            activeColor: Color(0xFF00326C),
            color: Colors.white,
            backgroundColor: Color(0xFF00326C),


            onTap: (index)=>setState(() {
            initialActiveIndex=index;

            if(initialActiveIndex==0) {
              setState(() {
                helpcolor = Helpcolor[1];
                homecolor = Homecolor[0];
                morecolor = Morecolor[0];

              });
            }
            if(initialActiveIndex==1){
              setState(() {
              helpcolor=Helpcolor[0];
              homecolor=Homecolor[1];
              morecolor=Morecolor[0];

              });
              }
            if(initialActiveIndex==2){
              setState(() {
              helpcolor=Helpcolor[0];
              homecolor=Homecolor[0];
              morecolor=Morecolor[1];
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Morepage()));
              });
            }

            })
    ,
        )
    );
  }
}
