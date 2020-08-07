


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_player/music_player.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MusicPlayer musicPlayer;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Initializing the Music Player and adding a single [PlaylistItem]
  Future<void> initPlatformState() async {
    musicPlayer = MusicPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home:Scaffold(backgroundColor: Colors.black12,
         body: Column(
           children: <Widget>[
             Container(
               width: double.infinity,
               height:200,
              
               decoration: BoxDecoration(color: const Color(0xff7c94b6),
               image: const DecorationImage(
               image: NetworkImage('https://new-practice-bucket.s3.us-east-2.amazonaws.com/Music-Lover.jpg'),
               fit: BoxFit.cover,),
             ),

             child: Column(
                 
                  children: <Widget>[
                    Text("MpLaYeR",style: TextStyle(color: Colors.white,fontSize: 40,),
               ),
                  ],
                      
             ),
             ),


             Container(
               
               margin: EdgeInsets.all(10),
               height:50,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.deepPurple[200],),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                 children: <Widget>[
                        
                        Icon(Icons.comment,size: 35,),
                        
                        Icon(Icons.forward,size: 35,),
                        
                        Icon(Icons.file_download,size: 35,),
                        
                        Icon(Icons.favorite,size: 35,),
                         
                          
               ],
               )
             ),


             Container(
               
               margin: EdgeInsets.all(10),
               height: 370,
               width: 400,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.deepPurple[200],),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("                            CLOUD MUSIC",style: TextStyle(color: Colors.white,fontSize: 20),),
                   Card(child: Row(
                      
                          children: <Widget>[
                            Text("Bhai Log (Korala Maan)",style: TextStyle(color: Colors.black,fontSize: 20),),
                            
                            IconButton(icon: Icon(Icons.play_arrow), onPressed: () {
                                  Fluttertoast.showToast(
                                     msg: "Playing Bhai Log(Korala Maan)",
                                     toastLength: Toast.LENGTH_SHORT,
                                     gravity: ToastGravity.BOTTOM,
                                     timeInSecForIosWeb: 5,
                                     backgroundColor: Colors.black,
                                     textColor: Colors.white,
                                     fontSize: 16.0,
                                  );
                                  print('PLAYING KoRaLA MAAN');
                                   musicPlayer.play(MusicItem(
                                   trackName: 'Bhai Log',
                                   albumName: 'Bhai Log',
                                   artistName: 'Krola Maan',
                                   url: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/Bhai+Log+Korala+Maan+Dj+Remix+Song+Download.-(NewDjRemixSong).mp3',
                                  coverUrl: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/korala.jpg',
                                  duration: Duration(seconds: 255),
                                  
                                  )
                                  );

                                  //Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => myapp(),));

                            } ),
                          ]
                        ),
                   ),
                   
                   Card(child: Row(
                          children: <Widget>[
                            Text("GOAT (Siddhu Moose Wala)",style: TextStyle(color: Colors.black,fontSize: 20),),
                            
                            IconButton(icon: Icon(Icons.play_arrow), onPressed: () {print('Mosse Wala');
                                  Fluttertoast.showToast(
                                     msg: "Playing GOAT(Siddhu Moose Wala)",
                                     toastLength: Toast.LENGTH_SHORT,
                                     gravity: ToastGravity.BOTTOM,
                                     timeInSecForIosWeb: 5,
                                     backgroundColor: Colors.black,
                                     textColor: Colors.white,
                                     fontSize: 16.0,
                                  );
                                  musicPlayer.play(MusicItem(
                                   trackName: 'GOAT',
                                   albumName: 'GOAT',
                                   artistName: 'Siddhu Moose Wala',
                                   url: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/Goat+-+Sidhu+Moose+Wala+(DjPunjab.Com).mp3',
                                  coverUrl: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/sidhu.jfif',
                                  duration: Duration(seconds: 255),
                                  ));
                                  //Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => myapp(),));
                            
                            
                            } ),
                          ]
                        ),
                   ),
                    Card(child: Row(
                          children: <Widget>[
                            Text("G.O.A.T (Diljit Dosanjh)",style: TextStyle(color: Colors.black,fontSize: 20),),
                            
                            IconButton(icon: Icon(Icons.play_arrow), onPressed: () {print('Diljit Dosanjh');
                                   Fluttertoast.showToast(
                                     msg: "Playing G.O.A.T (Diljit Dosanjh)",
                                     toastLength: Toast.LENGTH_SHORT,
                                     gravity: ToastGravity.BOTTOM,
                                     timeInSecForIosWeb: 5,
                                     backgroundColor: Colors.black,
                                     textColor: Colors.white,
                                     fontSize: 16.0,
                                  );
                                   musicPlayer.play(MusicItem(
                                   trackName: 'GOAT',
                                   albumName: 'GOAT',
                                   artistName: 'Diljit Dosanjh',
                                   url: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/Goat-(Mr-Jatt.com).mp3',
                                   coverUrl: 'https://new-practice-bucket.s3.us-east-2.amazonaws.com/diljit.jpg',
                                   duration: Duration(seconds: 255),
                                   ));
                                   //Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => myapp(),));
                            } ),
                          ]
                        ),
                    ),
                 ],
               ),
             ),
           ],
           ),
         ) 
         ,debugShowCheckedModeBanner: false,


    );
  }
}

