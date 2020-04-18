import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_app/models/LocationItemModel.dart';

class LocationDetail extends StatelessWidget {
  final List<LocationItemModel> locations = [
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1657984/pexels-photo-1657984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/2474689/pexels-photo-2474689.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1694621/pexels-photo-1694621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/2166553/pexels-photo-2166553.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/415708/pexels-photo-415708.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1603650/pexels-photo-1603650.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1098460/pexels-photo-1098460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(60),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                Chip(
                  label: Text(
                    "Asia",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  backgroundColor: Color(0xFF3640ff),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Discover\nAsia",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontFamily: "poppinsblack",
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Top Locations of Asia",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3640ff),
                      fontFamily: "poppinsbold"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ipsa et et harum et non provident iure. Ipsa et et harum et non provident iure. Ipsa et et harum et non provident iure. Ipsa et et harum et non provident iure. ",
                ),

                ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: locations.map((l){
                    return Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFfff9ed),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: <Widget>[

                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image(
                              image: NetworkImage(l.image),
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(l.name),

                        ],
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
