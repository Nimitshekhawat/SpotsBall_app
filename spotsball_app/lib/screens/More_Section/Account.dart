import 'package:flutter/material.dart';
import 'package:spotsball_app/screens/More_Section/My_competition.dart';
import 'package:spotsball_app/screens/More_Section/Update_profile.dart';
import 'package:spotsball_app/screens/SignIn_screens/Sign_in.dart';

import '../custom_widget.dart';
import 'Change_password.dart';
import 'Leader_board.dart';
import 'My_Wins.dart';
import 'Privacy_policy.dart';
import 'Terms_of_play.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  List<String> CardsImagespath = [
    'assets/more_section_images/profile_icon.png',
    'assets/more_section_images/Trophy_icon.png',
    'assets/more_section_images/Prize_collection_Trophy.png',
    'assets/more_section_images/Leaderboard.png',
    'assets/more_section_images/changepasskey.png',
    'assets/more_section_images/Logout.png',
  ];
  List<String> CardsText = [
    'Update Profile',
    'My Competitions',
    'My Wins',
    'Leader Board',
    'Change Password',
    'Log Out',
  ];

  List<Widget> Navigatorfiles = [
    update_profile(),
    MyCompetition(),
    My_wins(),
    Leader_board(),
    Chage_password(),
    account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'account', value: 0, context: context)),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15),
                      itemCount: CardsText.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Navigatorfiles[index]));
                              if (index == 5) {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            0.30,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                              ),
                                              TextRoboto400_16(
                                                  fontsize: 20,
                                                  text:
                                                      'Are you sure you want to logout?',
                                                  color: Colors.black),
                                              SizedBox(
                                                height: 35,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                          builder:
                                                              (context) =>
                                                                  Signin()),
                                                      (Route<dynamic>
                                                              route) =>
                                                          false,
                                                    );
                                                  },
                                                  child: Custombtn_h50_wfull(
                                                      context: context,
                                                      text: 'Yes',
                                                      textcolor:
                                                          Colors.white)),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Custombtn_h50_wfull(
                                                      context: context,
                                                      text: 'No',
                                                      textcolor: Colors.white,
                                                      btncolor:
                                                          Color(0xFFBD0000))),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              }
                            },
                            child: MoreCards(
                                Imagepath: CardsImagespath[index],
                                Text: CardsText[index]));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// InkWell(
// onTap: (){
// showModalBottomSheet(context: context, builder: (BuildContext context){
// return Container(
// height: MediaQuery.of(context).size.height*0.30,
// child: Padding(
// padding: const EdgeInsets.only(left: 14,right: 14),
// child: Column(
//
// children: [
// SizedBox(
// height:MediaQuery.of(context).size.height*0.05,
// ),
// TextRoboto400_16(fontsize: 20, text:'Are you sure you want to logout?',color: Colors.black),
// SizedBox(
// height: 35,
// ),
// InkWell(
// onTap: (){
// Navigator.of(context).pushAndRemoveUntil(
// MaterialPageRoute(builder: (context) => Signin()),
// (Route<dynamic> route) => false,
// );
// },
// child: Custombtn_h50_wfull(context: context, text:'Yes', textcolor: Colors.white)),
// SizedBox(
// height: 15,
// ),
// InkWell(
// onTap: (){
// Navigator.pop(context);
// },
// child: Custombtn_h50_wfull(context: context, text:'No', textcolor: Colors.white , btncolor: Color(0xFFBD0000))),
//
// ],
// ),
// ),
//
// );
// });
// },
