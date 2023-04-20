import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);
  void playsound(int Soundplay) async{
    AudioPlayer player = AudioPlayer();
    await player.setAsset('assets/note$Soundplay.wav');
    await player.play();

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 510.0,
                height: 110.0,
                child: TextButton(
                  onPressed: () async {
                    playsound(2);

                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Center(child: Text('Click me')),
                ),
              ),
              Container(
                width: 510.0,
                height: 110.0,
                child: TextButton(
                  onPressed: () {
                    playsound(3); // i have used function call and the other ones are sama
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Center(child: Text('')),
                ),
              ),
              Container(
                width: 510,
                height: 110,
                child: TextButton(
                  onPressed: () async {
                    AudioPlayer player =AudioPlayer();
                    await player.setAsset('assets/note3.wav');
                    await player.play();

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  ),child: Center(child: Text('')),
                ),
              ),
              Container(
                width: 510,
                height: 110,
                child: TextButton(
                  onPressed: () async {
                    AudioPlayer player = AudioPlayer();
                    await player.setAsset('assets/note4.wav');
                    await player.play();

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                  ), child: Text(''),
                ),

              ),
              Container(
                width: 510,
                height: 110,

                child: TextButton(
                  onPressed: () async{
                    AudioPlayer player = AudioPlayer();
                    await player.setAsset('assets/note5.wav');
                    await player.play();


                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: Text(''),
                ),
              ),
              Container(
                width: 510,
                height: 100,
                child: TextButton(
                  onPressed: () async{
                    AudioPlayer player =AudioPlayer();
                    await player.setAsset('assets/note6.wav');
                    await player.play();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  child: Text(''),
                ),
              ),
              Container(
                width: 510,
                height: 110,
                child: TextButton(
                  onPressed: () async{
                    AudioPlayer player = AudioPlayer();
                    player.setAsset('assets/note7.wav');
                    await player.play();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                  ),
                  child: Text(''),

                ),

              ),

            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}






// void main(){
//   greet(greetings:'how are you doing',name:'azuu',);
//
// }
//
// void greet({required String name, greetings}){
//   print('Hi $name, $greetings');
// }

//understaning functions
// void main(){
//   double result =myfunctin();
//   print(result);
//
// }
// double myfunctin(){
//   double pi= 3.14;
//   return pi*2;
// }


// void main(){
//   int step1result= add(n1:5 , n2:9);
//   int step2result= multiply(step1result,5);
//
//   double finalresult = step2result / 3;
//
//   print(finalresult);
//
//
// }
// int add({required int n1, required int n2}){
//
//   return n1 + n2 ;
//
// }
//
// int multiply(int n1 , int n2){
//   return n1*n2;
// }

