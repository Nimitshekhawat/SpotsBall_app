import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_widget.dart';

class Leader_board extends StatefulWidget {
  const Leader_board({super.key});

  @override
  State<Leader_board> createState() => _Leader_boardState();
}

class _Leader_boardState extends State<Leader_board> {
  List<bool> isCheckedList =[false,false];
  List<String> Filter=[
    'Price (High - Low)',
    'Price (Low - High)'
  ];
  TextEditingController Search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: Main_appbar(
          title: 'Leader Board',
          value: 0,
          context: context,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [

              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,

                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          // color: Colors.blue,
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.68,

                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Center(
                                child: Container(
                                    child: Image.asset(
                                      'assets/images/Searchicon.png',
                                      height: 15,
                                      fit: BoxFit.fitHeight,
                                    )),
                              ),
                              Container(
                                // color: Colors.white,

                                width:
                                MediaQuery.of(context).size.width * 0.54,

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
                                            fontWeight: FontWeight.w400)),
                                    border: InputBorder.none,
                                    contentPadding:
                                    const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    isDense: true,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                         showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return StatefulBuilder(builder:
                                      (BuildContext context,
                                      StateSetter setState) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 24, right: 10),
                                      child: SizedBox(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            0.35,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  flex: 8,
                                                  child: Container(
                                                      child: Center(
                                                          child: TextRoboto700_32(
                                                              fontsize: 16,
                                                              text: 'Filter',
                                                              color: Color(
                                                                  0xFF00326C)))),
                                                ),
                                                SizedBox(
                                                  width: 27,
                                                ),
                                                Expanded(
                                                    flex: 1,
                                                    child: Crossbtn(context)),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.14,
                                              child: ListView.builder(
                                                itemBuilder:
                                                    (context, index) {
                                                  return Column(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Checkbox(
                                                          focusColor:
                                                          Colors.white,
                                                          value:
                                                          isCheckedList[
                                                          index],
                                                          onChanged:
                                                              (bool? value) {
                                                            setState(() {
                                                              isCheckedList[
                                                              index] =
                                                                  value ??
                                                                      false;
                                                            });
                                                            if(index==0){
                                                              if(isCheckedList[0]==true){
                                                                isCheckedList[1]=false;
                                                              }
                                                            }
                                                            if(index==1){
                                                              if(isCheckedList[1]==true){
                                                                isCheckedList[0]=false;
                                                              }
                                                            }

                                                          },
                                                          activeColor:
                                                          Colors.blue,
                                                          // Color when checked
                                                          checkColor:
                                                          Colors.white,
                                                          // Color of the check mark inside the box
                                                          hoverColor: Colors
                                                              .transparent, // Color when hovering (optional) // Adjust the color as needed
                                                        ),
                                                        SizedBox(width: 15),
                                                        // Assuming TextRoboto500_14 is a custom function returning a Text widget
                                                        TextRoboto500_14(
                                                          fontsize: 16,
                                                          text: Filter[
                                                          index],
                                                          color: Colors.black,
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      height: 1,
                                                      color: Colors.black12,
                                                    ),
                                                  ]);
                                                },
                                                itemCount: 2,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Signinbutton(
                                                context: context,
                                                title: 'Apply',
                                                title_color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                                });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                                child: Image.asset(
                                  'assets/images/Filter_by.png',
                                  height: 11,
                                )),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),
          SizedBox(
            height: 400,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 3,
                    child: Table(
                      columnWidths: const{
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(1),
                      },
                      border: TableBorder.all(borderRadius: BorderRadius.circular(20)),
                      children: [
                        TableRow(
                          
                          children: [
                            TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(10.0), child: TextRoboto500_14(fontsize: 12, text:  'Rank',color: Color(0xFF4F4F4F))))),
                            TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(10.0), child: TextRoboto500_14(fontsize: 12, text: 'Name',color: Color(0xFF4F4F4F))))),
                            TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(10.0), child: TextRoboto500_14(fontsize: 12, text: 'Prize Money',color: Color(0xFF4F4F4F))))),

                          ],
                        ),
                        ...Leader_boarddata.map((data) {
                          return TableRow(
                            children: [
                              TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(10.0), child: TextRoboto400_16(fontsize: 12, text:  data['Rank'].toString(),color: Color(0xFF616161))))),
                              TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(8.0), child: TextRoboto400_16(fontsize: 12, text:  data['Name'].toString(),color: Color(0xFF616161))))),
                              TableCell(child: Center(child: Padding(padding: const EdgeInsets.all(10.0), child: TextRoboto400_16(fontsize: 12, text:  '₹${data['Prize'].toString()}',color: Color(0xFF616161))))),
                    
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )


            ],
          )
        ),
      ),
    );
  }
}

List<Map<String,dynamic>> Leader_boarddata =[
  {
    'Rank': 1,
    'Name':'Nimit Shekhawat',
    'Prize': 800000,
  },
  {
    'Rank': 2,
    'Name':'rohit ',
    'Prize': 200000,

  },
  {
    'Rank': 3,
    'Name':'Nimit Shekhawat',
    'Prize': 800000,
  },
  {
    'Rank': 4,
    'Name':'rohit ',
    'Prize': 200000,

  },
  {
    'Rank': 5,
    'Name':'Nimit Shekhawat',
    'Prize': 800000,
  },
  {
    'Rank': 6,
    'Name':'rohit ',
    'Prize': 200000,

  },
  {
    'Rank': 7,
    'Name':'Nimit Shekhawat',
    'Prize': 800000,
  },
  {
    'Rank': 8,
    'Name':'rohit ',
    'Prize': 200000,

  }
];
