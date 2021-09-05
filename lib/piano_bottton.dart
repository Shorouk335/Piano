
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoButton extends StatefulWidget {
  var number ;
  Color color ;
  var height ;
  var width ;
  List text ;
  Widget n =Container();
  PianoButton(this.number,this.color,this.text,this.height,this.width);
  @override
  _PianoButtonState createState() => _PianoButtonState();
}
class _PianoButtonState extends State<PianoButton> {
  AudioCache audio = new AudioCache();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        this.widget.n,
        Padding(
          padding: const EdgeInsets.all(2.5),
          child: InkWell(
            onTap: () {
              audio.play("note${this.widget.number}.mp3");
              setState(() {
                this.widget.n=Icon(Icons.arrow_drop_down,color: Colors.green,size: 45,);
                Future.delayed(Duration(seconds: 1),(){
                  setState(() {
                    this.widget.n=Container();
                  });});
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: this.widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black54, width:2.0)),
              width: this.widget.width,
              height: this.widget.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${this.widget.text[0]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20,),
                  Text(
                    "${this.widget.text[1]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "${this.widget.text[2]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ]
    );
  }
}
