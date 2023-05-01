import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:the_pause/lol.dart';

class medi_music extends StatefulWidget {
  String url;
  String name;
  medi_music({required this.url, required this.name});



  @override
  State<medi_music> createState() => _medi_musicState();
}

class _medi_musicState extends State<medi_music> {
  
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;







  // Future setAudio() async{
    // audioPlayer.setReleaseMode(ReleaseMode.loop);

    // audioPlayer.setSourceUrl(widget.url);
  //
  // }
  @override
  void initState(){
    super.initState();
    // setAudio();
    audioPlayer.onPlayerStateChanged.listen((state){
      setState((){
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Meditate_music_bg1.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.cancel_outlined),
                color: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(
              height: 550,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEBDE7).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Icon(Icons.favorite_border_outlined, color: Color(0xFF554DA5),),
                        Text(widget.name, style: TextStyle(fontSize: 15, color: Color(0xFF554DA5)),),
                        Icon(Icons.file_upload_outlined, color: Color(0xFF554DA5))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // const Text("Lorem Ipsum Dolor", style: TextStyle(fontSize: 13, color: Color(0xFF554DA5)),),
                    const SizedBox(
                      height: 5,
                    ),
                    Slider(min: 0,
                      thumbColor: Colors.white,
                      activeColor: Colors.black87 ,
                      inactiveColor: Colors.purple.shade700 ,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async{
                        final position = Duration(seconds: value.toInt());
                        await audioPlayer.seek(position);
                        await audioPlayer.resume();
                      },),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(formatTime(position)),
                          Text(formatTime(duration - position)),
                        ]
                      ),
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   width: 20,
                            // ),



                            SizedBox(
                              width: 55,
                            ),



                            Padding(
                              padding: const EdgeInsets.only(right:30),
                              child: IconButton(
                                  onPressed: () async {
                                    if (isPlaying){
                                      await audioPlayer.pause();
                                    }else{

                                      // String url = 'https://firebasestorage.googleapis.com/v0/b/the-pause-ffcda.appspot.com/o/Restfulness.mp3?alt=media&token=9b33d84b-3d6d-4b4f-9c98-071b93c9407a';
                                      await audioPlayer.play(UrlSource(widget.url));
                                    }
                                  },
                                  icon: Icon(isPlaying?Icons.pause:Icons.play_arrow, size: 60,),
                                   ),
                            ),

                            SizedBox(
                              width: 55,
                            ),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

