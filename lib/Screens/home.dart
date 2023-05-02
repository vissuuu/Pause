import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_pause/focus/focus.dart';
import 'package:the_pause/meditation/medi_final.dart';
import 'package:the_pause/focus/focus2.dart';
import 'package:the_pause/meditation/med%202.dart';
import 'package:the_pause/meditation/med.dart';
import 'package:the_pause/model/flask.dart';
import 'package:the_pause/screens/quiz.dart';
import 'nav.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {
  double _sliderValue = 0.0;

  @override
  void initState() {
    var y =predictAnx(20);
    print(y);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final List<String> affirmations = [    'You are capable of amazing things!',    'You are strong and resilient!',    'You are loved and appreciated!',    'You are worthy of happiness and success!',    'You are beautiful both inside and out!',  ];
    final List<Widget> _pages = [
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[0],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[0],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[1],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[2],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[3],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
      Container(
        child: Column(children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 50, 0),
            child: Text(
              'Affirmation for today!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 60, 0),
            child: Text(
              affirmations[4],
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    ];

    int _currentPageIndex = 0;

    CarouselController _carouselController = CarouselController();

    void _onPageChanged(int index) {
      print(_currentPageIndex);
      setState(() {
        _currentPageIndex = index;
      });
    }

    Widget _buildDots() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_pages.length, (index) {
          return Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPageIndex == index ? Colors.blue : Colors.grey,
            ),
          );
        }),
      );
    }
    double _value = 5;
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF3ECFA),
                Colors.white,
              ],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
            ),
          ),
          child: ListView(
            children: [
              Container(

                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 50, bottom: 5),
                      child: Row(

                        children: [
                          Text("Hi User,", style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ), //hi joe
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child:
                      Row(
                        children: [
                          Text("How are you feeling?", style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),

                    ), //how are
                    Container(
                      margin: EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Container(
                              width: 350,
                              child: Slider(
                                activeColor: Color(0xFF9575CD),
                                thumbColor: Color(0xFF673AB7),
                                inactiveColor: Color(0xFFE5D2F8),
                                value: _sliderValue,
                                min: 0,
                                max: 10,
                                divisions: 10,
                                label: _sliderValue.round().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    _sliderValue = value;
                                  });
                                },
                              ),
                              )
                        ],
                      ),
                    ), // slider
                    Container(
                      width:310 ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sad",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Happy",style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ), //sad happy
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("What would you like to do?", style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ), //wh
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child:
                            Container(
                              width: 150,
                              height: 200 ,

                              decoration: BoxDecoration(
                                  color: Color(0xFFE6DDF6),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 4,
                                        offset: Offset(2,2)
                                    )
                                  ]
                              ),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),

                                    ),
                                    child: Image.asset("assets/images/medi.png"),
                                  ),
                                  Text("Meditate",style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500
                                  ),)
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => medi_final(),
                                ),
                              );
                            },),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => focus_2(),
                                ),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 200 ,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE6DDF6),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 4,
                                        offset: Offset(2,2)
                                    )
                                  ]
                              ),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(

                                    child: Image.asset("assets/images/foc.png"),

                                    width: 130,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),


                                    ),
                                  ),

                                  Text("Focus mode", style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500
                                  ),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ), //med and focus
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Quiz(),
                          ),
                        );
                      },
                      child: Container(
                        height: 240,
                        child: Stack(
                          children: [
                            Container(

                              margin: EdgeInsets.only(top: 35),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Container(
                                    width: 338,
                                    height: 200 ,

                                    decoration: BoxDecoration(
                                        color: Color(0xFFE6DDF6),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(blurRadius: 4,
                                              offset: Offset(2,2)
                                          )
                                        ]

                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [

                                            Container(
                                                margin: EdgeInsets.only(left: 30),
                                                child: Text("Stress-o-Meter", style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,

                                                ),))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 30),
                                              child: Text(
                                                '''Answer a few questions about your  
everyday life and get to know the 
level of stress you are experiencing'''
                                                ,style: TextStyle(
                                                fontSize: 15,

                                              ),

                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),




                                ],
                              ),
                            ),
                            Positioned(left:310,
                                top: 80,
                                child: Image.asset("assets/images/checkbox.png"))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 338,
                        height: 180,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 96, 50, 174),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(blurRadius: 4, offset: Offset(2, 2))
                              ]),
                          child: Stack(
                            children: [
                              CarouselSlider(
                                items: _pages,
                                options: CarouselOptions(
                                  height: double.infinity,
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentPageIndex = index;
                                    });
                                  },
                                ),
                                carouselController: _carouselController,
                              ),
                              Positioned(
                                top: 20,
                                right: -30,
                                bottom: 0,
                                child: Image.asset(
                                  'assets/images/saly-28.png',
                                  // fit: BoxFit.cover,
                                  width: 140,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 16,
                                child: _buildDots(),
                              ),
                            ],
                          ),
                        ),
                    ),

                    // SizedBox(
                    //   height: 200,
                    //   child: CarouselSlider(
                    //     options: CarouselOptions(
                    //       autoPlay: true,
                    //       height: 200,
                    //     ),
                    //     items: affirmations
                    //         .map((affirmation) =>
                    //         Container(
                    //           margin: EdgeInsets.all(10),
                    //           decoration: BoxDecoration(
                    //               color: Color(0xFFE6DDF6),
                    //               borderRadius: BorderRadius.all(Radius.circular(10)),
                    //               boxShadow: [
                    //                 BoxShadow(blurRadius: 4,
                    //                     offset: Offset(2,2)
                    //                 )
                    //               ]
                    //
                    //           ),
                    //           child: Center(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: Text(
                    //                 affirmation,
                    //                 style:  TextStyle(
                    //                 fontSize: 20,
                    //                 fontWeight: FontWeight.w500,
                    //
                    //               ),
                    //
                    //               ),
                    //             ),
                    //           ),
                    //         ))
                    //         .toList(),
                    //   ),
                    // ),



                    //quiz
                  ],
                ),
              )
            ],
          ),
        )

    );
  }

}


