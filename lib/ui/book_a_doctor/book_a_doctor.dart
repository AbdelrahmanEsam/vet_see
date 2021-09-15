import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vet_see/ui/bootom_nav.dart';
import 'package:vet_see/utils/colors.dart';
import 'package:vet_see/utils/images.dart';
import 'package:sizer/sizer.dart';

class BookDoctor extends StatefulWidget {
  const BookDoctor({Key? key}) : super(key: key);

  @override
  _BookDoctorState createState() => _BookDoctorState();
}

class _BookDoctorState extends State<BookDoctor> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
         margin :  EdgeInsets.only(bottom: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(backgroundWithTint,width: width,height: height,fit: BoxFit.fill,),
              PositionedDirectional(
                top: 0,
                start: 0,
                end: 0,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(hamburger),
                          Image.asset(logo)
                        ],
                      ),
                      Row(
                        children:[
                          Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(top: height*0.1,left: height*0.015),
                            width:  width * 0.15,
                            height: 1,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top:height*0.1),
                            child: Text('BOOK A DOCTOR',style: TextStyle(color: Colors.white,fontSize: 20.sp)),
                          ),
                        ],
                      ),
                      Container(width: width-64,
                          height: height*0.6,

                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: Colors.white),
                                right: BorderSide(color: Colors.white),
                                bottom:  BorderSide(color: Colors.white),
                              )
                          ),
                      ),

                    ],
                  ),
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

