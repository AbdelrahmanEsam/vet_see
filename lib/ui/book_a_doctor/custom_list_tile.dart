import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vet_see/utils/colors.dart';
import 'package:vet_see/utils/images.dart';

class ListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(earth),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(color: divider_color, width: 1,),
          ),
        ],
      )
    );
  }
}
