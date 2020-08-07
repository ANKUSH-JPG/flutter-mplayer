import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


  

class _MyAppState extends State<MyApp> {
   FlickManager flickManager;
  
  var url="https://new-practice-bucket.s3.us-east-2.amazonaws.com/videoplayback1.mp4";
  @override

   void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(url),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
         home:Scaffold(backgroundColor: Colors.black12,
         body: Column(
           children: <Widget>[
             Container(
               child: FlickVideoPlayer( flickManager: flickManager),
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
               height: 350,
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
                                  url="https://new-practice-bucket.s3.us-east-2.amazonaws.com/videoplayback.mp4";
                                 

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
                                  url="https://new-practice-bucket.s3.us-east-2.amazonaws.com/videoplayback1.mp4";
                                  
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

