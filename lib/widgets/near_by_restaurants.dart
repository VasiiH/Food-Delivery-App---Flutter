import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NearByRestaurants extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Near by Restaurants',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.5,
            ),
          ),
        ),

      ],
    );
  }
}
