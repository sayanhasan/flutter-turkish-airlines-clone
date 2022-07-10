import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:turkish_airlines_clone/turkish-airlines-home-view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(const TurkishAirlinesClone());
  });
}

class TurkishAirlinesClone extends StatelessWidget {
  const TurkishAirlinesClone({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turkish Airlines Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TurkishAirlinesHomeView(),
    );
  }
}
