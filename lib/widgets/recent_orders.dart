import 'package:flutter/material.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Orders',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}
