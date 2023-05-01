import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_pause/Screens/quiz_result.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);


  @override
  State<Quiz> createState() => _QuizState();

 }

class _QuizState extends State<Quiz> {
  final List<String> questions = [
    ' How many fruits or vegetables do you eat everyday?',
    ' How much stress do you typically experience everyday?',
    ' How many people are very close to you? ',
    ' With how many people do you interact with during a typical day? ',
    ' About how long do you typically sleep? ',
    ' How often do you shout or sulk at somebody? ',
    ' How many hours do you spend everyday doing what you are passionate about?',
    ' How well do you balance your work and life?',

  ];
  List<double> sliderValues = List.filled(16, 0);

  // double _sliderValue = 0.0;
  // List<String> _sliderLabels = ['Never', 'Rarely', 'Sometimes', 'Frequently'];
  double _sliderValue = 0;

  // String getTextValue() {
  //   if (_sliderValue == 0) {
  //     return 'Never';
  //   } else if (_sliderValue == 1) {
  //     return 'Rarely';
  //   } else if (_sliderValue == 2) {
  //     return 'Sometimes';
  //   } else {
  //     return 'Frequently';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(
    backgroundColor: Color(0xFF8B80F8),
    centerTitle:true,
    title:const Text('Meditative Mastery Quiz'),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25)),
    ),
        ),

        body: Container(
        child: Column(

          children: [
           const Padding(
                padding: EdgeInsets.only(top: 30),
                child: const Text(
                  'Answer the following questions on the scale of 0-10 ',
                 textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),
                 )),
             Expanded(
               child: ListView.builder(
                 itemCount: questions.length,
                 itemBuilder: (context, index) {
                   return Container(
                     margin: EdgeInsets.all(18),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(9.0),
                           child: Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                               questions[index],
                               style: const TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,

                               ),
                             ),
                           ),
                         ),
                         // Slider(
                         //   key: const Key('Slider 1'),
                         //   value: sliderValues[index],
                         //   min: 0,
                         //   max: 10,
                         //   divisions: 10,
                         //   label: sliderValues[index].toString(),
                         //   activeColor: Color(0xFF9575CD),
                         //   thumbColor: Color(0xFF673AB7),
                         //   inactiveColor: Color(0xFFD1C4E9),
                         //   onChanged: (newValue) {
                         //     setState(() {
                         //       sliderValues[index] = newValue;
                         //
                         //     });
                         //   },
                         //
                         // ),
                         // SfSlider(
                         //     min: 0,
                         //     max: 10,
                         //     value: sliderValues[index],
                         //     interval: 10,
                         //     showTicks: true,
                         //     showLabels: true,
                         //     enableTooltip: true,
                         //     minorTicksPerInterval: 1,
                         //     onChanged: (newValue){
                         //       setState(() {
                         //         sliderValues[index] = newValue;
                         //         // _sliderValue = value;
                         //       });
                         //     },
                         //     )
                         SfSlider(
                           min: 0.0,
                           max: 10.0,
                           value: sliderValues[index],
                           interval: 1,
                           stepSize: 1,
                           showTicks: true,
                           showLabels: true,
                           enableTooltip: true,
                           tooltipShape: SfPaddleTooltipShape(),
                           activeColor: Color(0xFF9575CD),
                           inactiveColor: Color(0xFFD1C4E9),
                           onChanged: (value){
                             setState(() {
                               sliderValues[index] = value;
                             });
                           },
                         ),

                         // Padding(
                         //   padding: const EdgeInsets.all(16.0),
                         //   child: Container(
                         //     padding: EdgeInsets.all(5),
                         //     decoration:BoxDecoration(
                         //       border: Border.all(color: Colors.white, width: 2,)),
                         //     child: Text(
                         //       'Your Answer: ${sliderValues[index].toStringAsFixed(2)}',
                         //       style: const TextStyle(
                         //         fontSize: 16.0,
                         //       ),
                         //     ),
                         //   ),
                         // ),
                         // Repeat the above pattern for the remaining sliders and questions
                       ],
                     ),
                   );
                 },
               ),
             ),
           ],
         ),
       ),
       persistentFooterButtons: [
         Center(
           child: ElevatedButton(
             onPressed: () {
               QuizResultsPage quizResultsPage = QuizResultsPage(
                 nervousness: 40,
                 sadness: 30,
                 sleepiness: 80,
                 helplessness: 60,
               );

               Navigator.pop(context);

               // Handle button tap
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => quizResultsPage),
               );

             },
             child: Text('Get your results!'),
             style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                 padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                 primary: Color.fromARGB(
                     255, 150, 118, 205), // button background color
                 onPrimary: Colors.white, // text color
                 elevation: 5),
           ),
         )

       ],
     );
  }
}


