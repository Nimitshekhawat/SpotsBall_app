import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotsball_app/screens/Homepage_screens/cart.dart';

import '../custom_widget.dart';

class buyyourtickets extends StatefulWidget {
  const buyyourtickets({super.key});

  @override
  State<buyyourtickets> createState() => _buyyourticketsState();
}

class _buyyourticketsState extends State<buyyourtickets> {
  TextEditingController Search = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  List<bool> isCheckedList = [false, false, false, false];

  //Ticekets card list

  List<String> Sortybytitle = [
    'Price High to Low',
    'Price Low to High',
    'A to Z',
    'Z to A',
  ];
  List<String> Filter_by_price = [
    '0 - 100',
    '100 - 200',
    '200 - 400',
    '400 - 700',
  ];
  List<bool> heart = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<int> Ticketcost = [0, 0, 0, 0, 0, 0, 0, 0];
  List<Map<String, dynamic>> Selectedtickets = [];

  late bool likeditems;
  late int Values;

  @override
  void initState() {
    super.initState();
    likeditems = false;
  }

  void addtonewmap(Map<String, dynamic> item) {
    setState(() {
      Selectedtickets.add(item);
    });
  }

  final List<Map<String, dynamic>> TicketData = [
    {
      'Winprice': '5,00,000',
      'Ticketprice': 500,
      'Daysleft': 3,
      'lastdate': '22-07-2024',
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB0505),
      'Values': 0
    },
    {
      'Winprice': '4,00,000',
      'Ticketprice': 400,
      'Daysleft': 3,
      'lastdate': '22-07-2024',
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB8605),
      'Values': 0
    },
    {
      'Winprice': '3,00,000',
      'Ticketprice': 300,
      'Daysleft': 3,
      'lastdate': '22-07-2024',
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB4B05),
      'Values': 0
    },
    {
      'Winprice': '2,00,000',
      'Ticketprice': 200,
      'Daysleft': 3,
      'lastdate': '22-07-2024',
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB0505),
      'Values': 0
    },
    {
      'Winprice': '4,00,000',
      'Ticketprice': 400,
      'Daysleft': 3,
      'lastdate': '22-07-2024',
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFF058DAB),
      'Values': 0
    },
    {
      'Winprice': '5,00,000',
      'Ticketprice': 500,
      'Daysleft': 3,
      'lastdate': 22 - 07 - 2024,
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB0505),
      'Values': 0
    },
    {
      'Winprice': '5,00,000',
      'Ticketprice': 500,
      'Daysleft': 3,
      'lastdate': 22 - 07 - 2024,
      'Compitition_title': 'Compitition_Title',
      'Tickettext':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'heart': false,
      '_boxcolor': Color(0xFFAB0505),
      'Values': 0
    },
  ];

  void plusIsPressed(int index) {
    setState(() {
      if (TicketData[index]['Values'] < 75) {
        TicketData[index]['Values']++;
      }
    });
  }

  void minusIsPressed(int index) {
    setState(() {
      if (TicketData[index]['Values'] > 0) {
        TicketData[index]['Values']--;
      }
    });
  }

  void costcalculator(index) {
    setState(() {
      Ticketcost[index] = (TicketData[index]['Values'] *
          TicketData[index]['Ticketprice']) as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: Main_appbar(
            title: 'Buy Your Tickets',
            value: 0,
            context: context,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => cartpage(
                          // Selectedtickets
                          )));
            }),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, right: 7, top: 1),
                child: Container(
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
                              setState(() {
                                likeditems = false;
                              });

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
                                              0.50,
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
                                                                text: 'Sort By',
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
                                                    0.30,
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
                                                                 isCheckedList[2]=false;
                                                                 isCheckedList[3]=false;
                                                               }
                                                             }
                                                             if(index==1){
                                                               if(isCheckedList[1]==true){
                                                                 isCheckedList[0]=false;
                                                                 isCheckedList[2]=false;
                                                                 isCheckedList[3]=false;
                                                               }
                                                             }
                                                             if(index==2){
                                                               if(isCheckedList[2]==true){
                                                                 isCheckedList[0]=false;
                                                                 isCheckedList[1]=false;
                                                                 isCheckedList[3]=false;
                                                               }
                                                             }
                                                              if(index==3){
                                                                if(isCheckedList[3]==true){
                                                                  isCheckedList[0]=false;
                                                                  isCheckedList[1]=false;
                                                                  isCheckedList[2]=false;
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
                                                            text: Sortybytitle[
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
                                                  itemCount: 4,
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
                                'assets/images/sort_by.png',
                                height: 11,
                              )),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            likeditems = false;
                          });

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
                                          0.50,
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
                                                            text: 'Filter By Price',
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
                                                0.30,
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
                                                              isCheckedList[2]=false;
                                                              isCheckedList[3]=false;
                                                            }
                                                          }
                                                          if(index==1){
                                                            if(isCheckedList[1]==true){
                                                              isCheckedList[0]=false;
                                                              isCheckedList[2]=false;
                                                              isCheckedList[3]=false;
                                                            }
                                                          }
                                                          if(index==2){
                                                            if(isCheckedList[2]==true){
                                                              isCheckedList[0]=false;
                                                              isCheckedList[1]=false;
                                                              isCheckedList[3]=false;
                                                            }
                                                          }
                                                          if(index==3){
                                                            if(isCheckedList[3]==true){
                                                              isCheckedList[0]=false;
                                                              isCheckedList[1]=false;
                                                              isCheckedList[2]=false;
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
                                                        text: Filter_by_price[index],
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
                                              itemCount: 4,
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

                        child: Card(
                          elevation: 5,
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
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (likeditems == false) {
                                  likeditems = true;
                                }
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: likeditems ? Color(0xFF7CAB05) : null,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                  child: likeditems
                                      ? Image.asset(
                                          'assets/images/liked_white.png',
                                          height: 11,
                                        )
                                      : Image.asset(
                                          'assets/images/liked_black.png',
                                          height: 11,
                                        )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.72,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 230,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 1,
                        ),
                        itemCount: TicketData.length,
                        itemBuilder: (context, index) {
                          final Ticketitem = TicketData[index];
                          return Stack(
                            children: [
                              Card(
                                elevation: 5,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (heart[index] == false) {
                                              heart[index] = true;
                                            } else {
                                              heart[index] = false;
                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 63,
                                          decoration: BoxDecoration(
                                            color: Ticketitem['_boxcolor'],
                                            // Adjust as needed
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, right: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextRoboto400_16(
                                                    fontsize: 12,
                                                    text: 'Win',
                                                    color: Colors.white),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 16),
                                                  height: 28,
                                                  child: Center(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          child: Image.asset(
                                                            'assets/images/Rupee_white.png',
                                                            height: 18,
                                                            fit: BoxFit
                                                                .fitHeight,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Center(
                                                            child: TextRoboto700_32(
                                                                fontsize: 22,
                                                                text:
                                                                    '${Ticketitem['Winprice']}',
                                                                color: Colors
                                                                    .white)),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (context) {
                                                  return StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        StateSetter
                                                            setState /*You can rename this!*/) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 24,
                                                                right: 10),
                                                        child: Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.70,
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Crossbtn(
                                                                        context),
                                                                  ],
                                                                ),
                                                                TextRoboto700_32(
                                                                    fontsize:
                                                                        24,
                                                                    text:
                                                                        'For ${Ticketitem['Winprice']} Contest',
                                                                    color: Color(
                                                                        0xFFAB0505)),
                                                                SizedBox(
                                                                  height: 8,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    TextRoboto400_16(
                                                                        fontsize:
                                                                            16,
                                                                        text:
                                                                            'Ticket Price:'),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Image.asset(
                                                                      'assets/images/Rupee.png',
                                                                      height:
                                                                          16,
                                                                    ),
                                                                    TextRoboto400_16(
                                                                        fontsize:
                                                                            16,
                                                                        text:
                                                                            '${Ticketitem['Ticketprice']}',
                                                                        color: Colors
                                                                            .black),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 3,
                                                                ),
                                                                TextRoboto500_14(
                                                                    fontsize:
                                                                        18,
                                                                    text:
                                                                        'Quantity',
                                                                    color: Colors
                                                                        .black),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Container(
                                                                  width: 132,
                                                                  child: Row(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            if (TicketData[index]['Values'] >
                                                                                0) {
                                                                              TicketData[index]['Values']--;
                                                                            }
                                                                          });

                                                                          costcalculator(
                                                                              index);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              36,
                                                                          width:
                                                                              36,
                                                                          decoration: BoxDecoration(
                                                                              color: Color(0xFF7CAB05),
                                                                              shape: BoxShape.circle),
                                                                          child:
                                                                              Center(child: Image.asset('assets/images/Minus.png')),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            8,
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            36,
                                                                        width:
                                                                            36,
                                                                        decoration: BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            color: Colors.white,
                                                                            boxShadow: [
                                                                              BoxShadow(blurRadius: 5, spreadRadius: 1, color: Colors.black45)
                                                                            ]),
                                                                        child: Center(
                                                                            child: TextRoboto700_32(
                                                                                fontsize: 12,
                                                                                text: '${Ticketitem['Values']}',
                                                                                color: Colors.black)),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            8,
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          //plusIsPressed(index);
                                                                          print(
                                                                              "object");
                                                                          setState(
                                                                              () {
                                                                            if (TicketData[index]['Values'] <
                                                                                75) {
                                                                              TicketData[index]['Values']++;
                                                                            }
                                                                          });

                                                                          costcalculator(
                                                                              index);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              36,
                                                                          width:
                                                                              36,
                                                                          decoration: BoxDecoration(
                                                                              color: Color(0xFF7CAB05),
                                                                              shape: BoxShape.circle),
                                                                          child:
                                                                              Center(child: Image.asset('assets/images/Plus.png')),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 12,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Image.asset(
                                                                        'assets/images/Ball.png'),
                                                                    SizedBox(
                                                                      width: 9,
                                                                    ),
                                                                    Container(
                                                                        height:
                                                                            44,
                                                                        width:
                                                                            319,
                                                                        child: TextRoboto400_16(
                                                                            fontsize:
                                                                                16,
                                                                            text:
                                                                                'Use Add and subtract button for increase and decrease your tickets'))
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Image.asset(
                                                                        'assets/images/Ball.png'),
                                                                    SizedBox(
                                                                      width: 9,
                                                                    ),
                                                                    Container(
                                                                        height:
                                                                            44,
                                                                        child: Center(
                                                                            child:
                                                                                TextRoboto400_16(fontsize: 16, text: 'Max 75 tickets per person')))
                                                                  ],
                                                                ),
                                                                TextRoboto500_14(
                                                                    fontsize:
                                                                        18,
                                                                    text:
                                                                        'Buy Bulk Tickets',
                                                                    color: Colors
                                                                        .black),
                                                                SizedBox(
                                                                  height: 4,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          Ticketitem['Values'] =
                                                                              10;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            80,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE8E8E8),
                                                                            borderRadius: BorderRadius.circular(5)),
                                                                        child: Center(
                                                                            child: TextRoboto500_14(
                                                                                fontsize: 12,
                                                                                text: '10 Tickets',
                                                                                color: Colors.black)),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          Ticketitem['Values'] =
                                                                              20;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            80,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE8E8E8),
                                                                            borderRadius: BorderRadius.circular(5)),
                                                                        child: Center(
                                                                            child: TextRoboto500_14(
                                                                                fontsize: 12,
                                                                                text: '20 Tickets',
                                                                                color: Colors.black)),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          Ticketitem['Values'] =
                                                                              30;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            80,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE8E8E8),
                                                                            borderRadius: BorderRadius.circular(5)),
                                                                        child: Center(
                                                                            child: TextRoboto500_14(
                                                                                fontsize: 12,
                                                                                text: '30 Tickets',
                                                                                color: Colors.black)),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          Ticketitem['Values'] =
                                                                              75;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            80,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE8E8E8),
                                                                            borderRadius: BorderRadius.circular(5)),
                                                                        child: Center(
                                                                            child: TextRoboto500_14(
                                                                                fontsize: 12,
                                                                                text: '75 Tickets',
                                                                                color: Colors.black)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 20,
                                                                ),
                                                                InkWell(
                                                                    onTap: () {
                                                                      addtonewmap(
                                                                          Ticketitem);
                                                                    },
                                                                    child: Signinbutton(
                                                                        context:
                                                                            context,
                                                                        title:
                                                                            'Add to Cart',
                                                                        title_color:
                                                                            Colors.white))
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                });
                                          },
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                TextRoboto500_14(
                                                    fontsize: 12,
                                                    text:
                                                        '${Ticketitem['Compitition_title']}',
                                                    color: Color(0xFF535353)),
                                                SizedBox(
                                                  height: 1,
                                                ),
                                                TextRoboto400_16(
                                                    fontsize: 10,
                                                    text:
                                                        'Deadline: ${Ticketitem['lastdate'].toString()}'),
                                                Row(
                                                  children: [
                                                    TextRoboto400_16(
                                                        fontsize: 10,
                                                        text: 'Ticekt Price:'),
                                                    Image.asset(
                                                      'assets/images/Rupee_white.png',
                                                      height: 10,
                                                      color: Color(0xFF6A6A6A),
                                                    ),
                                                    TextRoboto400_16(
                                                        fontsize: 10,
                                                        text:
                                                            '${Ticketitem['Ticketprice']}'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Container(
                                                  width: 145,
                                                  child: TextRoboto400_16(
                                                      fontsize: 9,
                                                      text:
                                                          '${Ticketitem['Tickettext']}'),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/redclockicon.png'),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    TextRoboto500_14(
                                                        fontsize: 10,
                                                        text:
                                                            '${Ticketitem['Daysleft']} Days left',
                                                        color:
                                                            Color(0xFFBD0000))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12,
                                right: 20,
                                child: Container(
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF7CAB05),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Image.asset(
                                      'assets/images/cart_white.png'),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                right: 22,
                                child: Container(
                                  height: 12,
                                  width: 14,
                                  child: heart[index]
                                      ? Image.asset(
                                          'assets/images/Green_heart.png')
                                      : Image.asset(
                                          'assets/images/white_heart.png'),
                                ),
                              ),
                            ],
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
