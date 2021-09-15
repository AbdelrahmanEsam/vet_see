
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vet_see/utils/colors.dart';
import 'package:vet_see/utils/images.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          height: 80,
          color: blue_navigation.withOpacity(0.78),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(doctor),
                        SizedBox(height: 10),
                        Text('Doctor',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(color: Colors.white, width: 1,),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(pharmacy),
                        SizedBox(height: 10),
                        Text('Pharmacy',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(color: Colors.white, width: 1,),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(emergancy),
                        SizedBox(height: 10),
                        Text('Emergency',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(color: Colors.white, width: 1,),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(hotels),
                        SizedBox(height: 10),
                        Text('Hotels',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(color: Colors.white, width: 1,),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(partner),
                        SizedBox(height: 10),
                        Text('Wellness',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(color: Colors.white, width: 1,),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(partner),
                        SizedBox(height: 10),
                        Text('Partner',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
