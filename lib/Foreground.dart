import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Foreground extends StatelessWidget {
  const Foreground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    var inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.ibb.co/Z1fYsws/profile-image.jpg',

                  ),
                  backgroundColor: Colors.black26,
                ),
               onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
      child: DefaultTextStyle(
        style: GoogleFonts.raleway(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'hello hemant',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
            Text('check the weither of the city',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600

            ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                border: inputBorder,
                enabledBorder: inputBorder,
                hintText: 'search here',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                suffixIcon: Icon(Icons.search, color: Colors.white),
              ),
            ),
            SizedBox(height: 150),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Locations',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800
              ),
              ),
              OutlinedButton(
                  onPressed:(){},
                  child: Icon(Icons.more_horiz),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                shape: CircleBorder(),
                side: BorderSide(
                  width: 2,color: Colors.white
                )
              ),),

            ],
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for(var location in locations)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.darken),
                          child: Image.network(
                            location.imageUrl??'no image',
                            height: height* 0.35,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              location.text??'no title',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w800
                              ),
                            ),
                            Text(
                              location.timing??'no time'
                            ),
                            SizedBox(height: 40),
                            Text(
                              location.temperature.toString()??'no temp',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 50),
                            Text(
                              location.weather??'no weither'
                            )
                          ],
                        )
                      ],
                    ),
                  )

              ],

            )

          ],

        ),
      ),
      ),

    );
  }
}
class Location {
  final String? text;
  final String? timing;
  final int? temperature;
  final String? weather;
  final String? imageUrl;

  Location({
    this.text,
    this.timing,
    this.temperature,
    this.weather,
    this.imageUrl,
  });
}

final locations = [
  Location(
    text: 'New York'?? 'this is null safty',
    timing: '10:44 am'?? 'this is null safty',
    temperature: 15,
    weather: 'Cloudy'?? 'this is null safty',
    imageUrl: 'https://i.ibb.co/df35Y8Q/2.png'??'no image',
  ),
  Location(
    text: 'San Francisco',
    timing: '7:44 am',
    temperature: 6,
    weather: 'Raining',
    imageUrl: 'https://i.ibb.co/7WyTr6q/3.png',
  ),
];