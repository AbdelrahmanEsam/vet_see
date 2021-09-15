import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:vet_see/ui/book_a_doctor/book_a_doctor.dart';
import 'package:vet_see/ui/bootom_nav.dart';
import 'package:vet_see/utils/colors.dart';
import 'package:vet_see/utils/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {



    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(title: 'Flutter Demo', theme: ThemeData(primarySwatch: Colors.blue,), home: BookDoctor(),);
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Stack(
                children: [
                  Image.asset(background,width: width,height: height,fit: BoxFit.fill,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(hamburger),
                        Image.asset(logo)
                      ],

                    ),
                  ),

                ],
              ),
            ),
        ),
       bottomNavigationBar: BottomNav(),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
