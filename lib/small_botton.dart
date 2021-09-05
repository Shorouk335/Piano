
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  var number ;
  Color color ;
  var height ;
  var width ;
  List text ;
  SmallButton(this.number,this.color,this.text,this.height,this.width);
  @override
  PianoButtonState createState() => PianoButtonState();

}
class PianoButtonState extends State<SmallButton> {
  AudioCache audio = new AudioCache();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         audio.play("note${this.widget.number}.mp3");

         } ,child: Container(
        decoration: BoxDecoration(
            color: this.widget.color,
            borderRadius: BorderRadius.only(topLeft:Radius.elliptical(10, 10) ,topRight:Radius.elliptical(10, 10) ),
            border: Border.all(color: Colors.white, width:3.0)),
        width: this.widget.width,
        height:this.widget.height/1.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${this.widget.text[0]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:10,),
            Text(
              "${this.widget.text[1]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "${this.widget.text[2]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
