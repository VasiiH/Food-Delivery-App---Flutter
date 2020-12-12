import 'package:flutter/material.dart';
import 'package:flutter_food_delevery/data/data.dart';
import 'package:flutter_food_delevery/models/restaurant.dart';
import 'package:flutter_food_delevery/widgets/rating_stars.dart';

class BuildResturent extends StatelessWidget {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: Colors.pink,
            ),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height : 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,

                  image: AssetImage(restaurant.imageUrl),
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(12.0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Text(restaurant.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.0,),
                        RatingStars(restaurant.rating),
                        SizedBox(height: 4.0,),
                        Text(restaurant.address,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.0,),
                        Text('1 km',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          _buildRestaurants(),
        ],
    );
  }
}
