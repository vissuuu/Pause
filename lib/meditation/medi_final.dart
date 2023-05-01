import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_pause/meditation/medi_music.dart';
import 'package:the_pause/meditation/song.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Screens/nav.dart';

class medi_final extends StatefulWidget {
  const medi_final({Key? key}) : super(key: key);

  @override
  State<medi_final> createState() => _medi_finalState();
}

class _medi_finalState extends State<medi_final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Meditation", style: TextStyle(color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),),

          backgroundColor: Color(0xFFF3ECFA),
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const bottom_bar(),));
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
        ),
      body:
      SafeArea(
        child: StreamBuilder<List<Song>>(
          stream: getSongs(),
          builder: (BuildContext context, AsyncSnapshot<List<Song>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (!snapshot.hasData) {
              return Text('Loading...');
            }
            List<Song> songs = snapshot.data!;
            return GridView.builder(
              // itemExtent: MediaQuery.of(context).size.width / 2,
              itemCount: songs.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => medi_music(url: songs[index].url, name: songs[index].name),));
                    },
                    child: Container(
                      width: 135,
                      height: 165 ,

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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.network(songs[index].imgadd, height: 120,)),
                          Text(songs[index].name,style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                  ),
                );
                // ListTile( style: ,
                //   title: Text(songs[index].name),
                //
                //   onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context) => medi_music(url: songs[index].url,name:songs[index].name ,),));
                //   },
                // );
              },  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,

                childAspectRatio: 13/14,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            );
          },
        ),
      )
    );
  }
}
