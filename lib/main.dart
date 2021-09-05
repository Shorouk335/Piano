import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_instruments/music_app.dart';
main (){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((value) => runApp(MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: music(),
    );
  }
}

