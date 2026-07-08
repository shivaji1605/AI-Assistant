import 'package:flutter/material.dart';
import 'package:ai_assistant/color_pallet.dart';
import 'package:ai_assistant/feature_box.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annu', style: TextStyle(color: Pallete.mainFontColor, fontFamily: 'Cera Pro', fontSize: 20, fontWeight: FontWeight.bold),),
        leading: const Icon(Icons.menu, color: Pallete.mainFontColor,),
        centerTitle: true,
      ),
      body:Column(
        children: [

          //virtual assistant image
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 123,
                  // margin: const EdgeInsets.only(top: 20),
                  child: Image.asset('assets/images/virtualAssistant.png'),
                ),
              ),

            ],
          ),

          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 40,).copyWith(top: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor),
              borderRadius: BorderRadius.circular(20).copyWith(topLeft: const Radius.circular(0)),
            ),
            child: const Text(
              'Hello! I am Annu, How can I help you today?', 
              style: TextStyle(color: Pallete.mainFontColor, fontFamily: 'Cera Pro', fontSize: 25
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 22, top: 10),
            child: const Text("Here are few features",
              style: TextStyle(color: Pallete.mainFontColor, fontFamily: 'Cera Pro', fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //Features List
          Column(
            children:[
              FeatureBox(color: Pallete.firstSuggestionBoxColor, headerText: "Chat GPT", descriptionText: "A smarter way to stay organized and informed with AI-powered chat"),
              FeatureBox(color: Pallete.secondSuggestionBoxColor, headerText: "Dall-E", descriptionText: "Get inspired and stay creative with your personal assistant powered by Dall-E"),
              FeatureBox(color: Pallete.thirdSuggestionBoxColor, headerText: "Smart Voice Assistant", descriptionText: "Get the best of both worlds with a voice assistant that can do it all, powered by Dall-E and Chat GPT"),
            ]
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic,),
      ),
    );
  }
}