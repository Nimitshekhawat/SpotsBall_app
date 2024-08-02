import 'package:flutter/material.dart';

import '../custom_widget.dart';

class MyCompetition extends StatefulWidget {
  const MyCompetition({super.key});

  @override
  State<MyCompetition> createState() => _MyCompetitionState();
}

class _MyCompetitionState extends State<MyCompetition> {
  // Tickets data
  List<Map<String, dynamic>> myTickets = [
    {
      'Winprice': 500000,
      'NoOfTickets': 15,
      'Status': 'Pending',
      'Ticketcolor': Colors.red,
      'Daysleft': 4
    },
    {
      'Winprice': 500000,
      'NoOfTickets': 15,
      'Status': 'Pending',
      'Ticketcolor': Colors.blue,
      'Daysleft': 4
    },
    {
      'Winprice': 500000,
      'NoOfTickets': 15,
      'Status': 'Pending',
      'Ticketcolor': Colors.red,
      'Daysleft': 4
    },
    {
      'Winprice': 300000,
      'NoOfTickets': 15,
      'Status': 'Pending',
      'Ticketcolor': Colors.amberAccent,
      'Daysleft': 4
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: Main_appbar(
          title: 'My Competition',
          value: 0,
          context: context,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListView(
            children: myTickets.map((value) {
              return Column(
                children: [
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 88,
                            width: 88,
                            decoration: BoxDecoration(
                              color: value['Ticketcolor'],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.5),
                                      child: TextRoboto400_16(
                                        fontsize: 8,
                                        text: 'Win',
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 0.5),
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
                                      child: TextRoboto700_32(
                                        fontsize: 12.9,
                                        text: '${value['Winprice'].toString()}',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 94),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Textubuntu700_32(fontsize: 16, text: '₹${value['Winprice'].toString()}',color: Colors.black),
                                SizedBox(
                                  height: 2,
                                ),
                                Textubuntu500_14(fontsize: 14, text: 'Cash Price',color: Colors.black),
                                SizedBox(
                                  height: 2,
                                ),
                                Textubuntu400_16(fontsize: 14, text:'${value['NoOfTickets'].toString()} Tickets',color: Colors.black)
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),

                              Textubuntu700_32(fontsize: 14, text:value['Status'],color: Color(0xFFD39800)),
                              SizedBox(
                                height: 10,
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
                                      '${value['Daysleft']} Days left',
                                      color:
                                      Color(0xFFBD0000))
                                ],
                              ),


                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
