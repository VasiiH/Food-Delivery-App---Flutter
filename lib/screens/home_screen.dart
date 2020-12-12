import 'package:flutter/material.dart';
import 'package:flutter_food_delevery/data/data.dart';
import 'package:flutter_food_delevery/widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.00,
          onPressed: () {},
        ),
        title: Text('Food Delivery'),
        actions: [
          FlatButton(
            child: Text(
              'cart (${currentUser.cart.length})',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 10.0)),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        width: 1.00,
                        color: Theme.of(context).primaryColor)),
                hintText: 'Search Food for Restaurants',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                )
              ),
            ),
          ),
          RecentOrders(),
        ],
      ),
    );
  }
}
