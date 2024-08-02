import 'package:flutter/material.dart';

import '../custom_widget.dart';





class cartpage extends StatefulWidget {

  // List<Map<String,dynamic>> selcted_tickets=[];
  // cartpage(
  //     this.selcted_tickets,
  //     );


  @override
  State<cartpage> createState() => _cartpageState();
}




class _cartpageState extends State<cartpage> {



  //Ticekets card list
  List<String> Winprice =['5,00,000','2,00,000','5,00,000','7,00,000','8,00,000','50,000','4,00,000','1,00,000','70,000','9,000'];
  List<int> Ticketprice =[500,200,500,700,800,500,400,100,700,900];
  List<int> Daysleft=[3,1,3,1,3,1,3,1,3,1,];
  List<String> lastdate=['22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024','22-07-2024',];
  List<String> Compitition_title=['Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title','Compitition_Title',];
  List<String> Tickettext=[
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'];

  List<int> values=[0,0,0,0,0,0,0,0];
  List<int> Ticketcost=[0,0,0,0,0,0,0,0];
  List<bool> heart=[false,true,false,false,true,false,false,true,false,false];
  List<Color> _boxcolor=[Color(0xFFAB0505),
    Color(0xFFAB4B05),
    Color(0xFFAB8605),
    Color(0xFF058DAB),
    Color(0xFFAB0505),
    Color(0xFFAB4B05),
    Color(0xFFAC0425),
    Color(0xFF058DAB),
    Color(0xFFAB8605),
    Color(0xFFAB0505),
  ];

  late int finalvalue=0;




  @override
  void initState() {
    super.initState();
  }


  void plusIsPressed(int index) {
    setState(() {
      if (values[index] < 75) {
        values[index]++;
      }
      finalvalue=Ticketcost[index]+finalvalue;
    });
  }

  void minusIsPressed(int index) {
    setState(() {
      if (values[index] > 0) {
        values[index]--;
        finalvalue=Ticketcost[index]-finalvalue;
      }
    });
  }

  void costcalculator(index){

    setState(() {
     Ticketcost[index] = values[index] * Ticketprice[index];
    });
  }

  void finaltotal(){
    finalvalue= Ticketcost.reduce((a, b) => a + b);
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(

        preferredSize: Size.fromHeight(66),
        child: Main_appbar(title: 'Cart',
            value: 0,
            Cartpagevalue: true,
            context: context,
            onTap: () {
              Navigator.pop(context);
            }),
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
                    height: MediaQuery.of(context).size.height*0.57,
              
                    child: ListView.builder(itemCount:4,itemBuilder: (context,index){
                      return Column(
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 88,
                                          width: 88,
                                          decoration: BoxDecoration(
                                            color: _boxcolor[index],
                                            borderRadius: BorderRadius.circular(4)
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 2,right: 2),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 5.5),
                                                    child: TextRoboto400_16(fontsize: 8, text: 'Win',color: Colors.white),
                                                  ),
                                                  SizedBox(
                                                    width: 0.5,
                                                  ),
                                                  Container(
                                                    height: 16,
                                                    width: 7,
                                                    child: Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(top: 2),
                                                        child: Image.asset(
                                                          'assets/images/Rupee_white.png',
                                                          height: 11,
                                                          fit: BoxFit.fitHeight,
                                                          color: Colors.white,
              
              
              
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: TextRoboto700_32(fontsize:12.9, text: '${Winprice[index]}',color: Colors.white)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
              
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 9,top: 5,right: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
              
                                          TextRoboto700_32(fontsize: 16, text: '₹${Winprice[index]}',color: Colors.black),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          TextRoboto500_14(fontsize: 14, text: 'Cash Price',color: Colors.black),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          TextRoboto400_16(fontsize: 12, text: 'Spot & win',color: Colors.black)
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Container(
              
                                            height: 30,
                                            width: 88,
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    minusIsPressed(index);
                                                    costcalculator(index);
                                                    finaltotal();
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xFF7CAB05),
                                                        shape: BoxShape.circle
                                                    ),
                                                    child: Center(child: Image.asset('assets/images/Minus.png')),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                            blurRadius: 5,
                                                            spreadRadius: 1,
                                                            color: Colors.black45
                                                        )
                                                      ]
                                                  ),
                                                  child: Center(
                                                    child: TextRoboto700_32(fontsize: 12, text: '${values[index]}',color: Colors.black)
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    plusIsPressed(index);
                                                    costcalculator(index);
                                                    finaltotal();
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xFF7CAB05),
                                                        shape: BoxShape.circle
                                                    ),
                                                    child: Center(child: Image.asset('assets/images/Plus.png')),
              
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4,left: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          TextRoboto700_32(fontsize: 16, text: '₹${Ticketcost[index]}',color: Colors.black),
                                        ],
                                      ),
                                    ),
              
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          )
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
              
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 5,
              
              
                            child: TextRoboto700_32(fontsize: 16, text: 'Total',color: Colors.black)),
                        Expanded(
                          flex: 2,
              
                          child: Container(
              
                            child: Center(child: TextRoboto700_32(fontsize: 16, text: '₹ ${finalvalue}',color: Colors.black)),
                          ),
                        )
              
              
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Custombtn_h50_wfull(context: context, text: 'Proceed to Pay',
                      textcolor: Colors.white)
              
                ],
              
              ),
            ),
          ),
        ),
      ),
    );
  }
}
