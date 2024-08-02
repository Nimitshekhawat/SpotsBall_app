
import 'package:flutter/material.dart';
import '../custom_widget.dart';


class howtoplay extends StatefulWidget {
  const howtoplay({super.key});

  @override
  State<howtoplay> createState() => _howtoplayState();
}

class _howtoplayState extends State<howtoplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:PreferredSize(

            preferredSize: Size.fromHeight(66),
            child: Main_appbar(title: 'How to play', value: 0, context: context)
        ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),

                CustomVideoPlayer(
                  videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                ),
                SizedBox(
                  height: 15,
                ),

                Center(child: Container(
                    child: TextRoboto400_16(fontsize: 16, text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
