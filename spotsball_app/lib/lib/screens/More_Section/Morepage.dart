
import 'package:flutter/material.dart';
import 'package:spotsball_app/lib/screens/More_Section/Currency.dart';
import 'package:spotsball_app/lib/screens/custom_widget.dart';

import 'ContactUs.dart';
import 'CustomerReview.dart';
import 'In_The_Press.dart';
import 'Legal.dart';
import 'PrizeCollection.dart';


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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Morepage(),
    );
  }
}



class Morepage extends StatefulWidget {
  const Morepage({super.key});

  @override
  State<Morepage> createState() => _MorepageState();
}

class _MorepageState extends State<Morepage> {

  List<String> CardsImagespath = [
    'assets/more_section_images/profile_icon.png',
    'assets/more_section_images/Trophy_icon.png',
    'assets/more_section_images/Prize_collection_Trophy.png',
    'assets/more_section_images/In_the_Press.png',
    'assets/more_section_images/Customer_reviews.png',
    'assets/more_section_images/Contact_us.png',
    'assets/more_section_images/Currency.png',
    'assets/more_section_images/Legal.png'
  ];

  List<String> CardsText=['My Account ',
    'Winner',
    'Prize Collection',
    'In The Press',
    'Customer Reviews ',
    'Contact Us',
    'Currency',
    'Legal'];

  List<Widget> Navigatorfiles=[
    prizeCollection(),
    prizeCollection(),
    prizeCollection(),
    InThePress(),
    customerreview(),
    Contactus(),
    Currency(),
    Legal(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Container(
                height: MediaQuery.of(context).size.height*0.55,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing:  15,
                      crossAxisSpacing: 15

                    ),
                    itemCount: CardsText.length,
                    itemBuilder: (context,index){
                      return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Navigatorfiles[index]));
                          },
                          child: MoreCards(Imagepath: CardsImagespath[index], Text: CardsText[index]));

                    }),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
