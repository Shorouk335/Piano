
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_instruments/piano_bottton.dart';
import 'package:music_instruments/small_botton.dart';

class music extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<music> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
       fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PianoButton(1,Colors.purple.shade700, ["C",'DO','1'], height/1.3, width/12),
              PianoButton(2,Colors.deepPurple.shade400, ["D",'RE','2'], height/1.3, width/12),
              PianoButton(3,Colors.blue, ["E",'MI','3'], height/1.3, width/12),
              PianoButton(4,Colors.greenAccent.shade700, ["F",'FA','4'], height/1.3, width/12),
              PianoButton(5,Colors.green.shade400, ["G",'SOL','5'], height/1.3, width/12),
              PianoButton(6,Colors.lime, ["A",'LA','6'], height/1.3, width/12),
              PianoButton(7,Colors.yellowAccent.shade700, ["B",'SI','7'], height/1.3, width/12),
              PianoButton(1,Colors.deepOrange, ["C",'DO','8'], height/1.3, width/12),
              PianoButton(2,Colors.brown.shade500, ["D",'RE','9'], height/1.3, width/12),
              PianoButton(3,Colors.pink, ["E",'MI','10'], height/1.3, width/12),
            ],
          ),
          Positioned(
            top: height/11,
            child: Row(
              children: [
                SizedBox(width:width/9,),
                SmallButton(7,Colors.deepPurple.shade600, ["c#",'DO#','1#'], height/1.3, width/12/1.5),
                SizedBox(width:width/25,),
                SmallButton(6,Colors.blue.shade700, ["D#",'RE#','2#'], height/1.3, width/12/1.5),
                SizedBox(width: width/8.5,),
                SmallButton(5,Colors.green.shade700, ["F#",'FA#','3#'], height/1.3, width/12/1.5),
                SizedBox(width: width/25,),
                SmallButton(4,Colors.greenAccent.shade700, ["G#",'SQL#','5#'], height/1.3, width/12/1.5),
                SizedBox(width: width/25,),
                SmallButton(3,Colors.orangeAccent.shade700, ["A#",'LA#','6#'], height/1.3, width/12/1.5),
                SizedBox(width:  width/8.5,),
                SmallButton(2,Colors.deepOrangeAccent.shade700, ["C#",'DO#','8#'], height/1.3, width/12/1.5),
                SizedBox(width:width/25,),
                SmallButton(1,Colors.pink.shade700, ["D#",'RE#','9#'], height/1.3, width/12/1.5),

              ],
            ),
          )


        ],
      ) ,
    );
  }
}
