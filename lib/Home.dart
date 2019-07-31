import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

  var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: size.height,
                  child :new Image.asset('assets/HomeWallpaper.jpg', fit: BoxFit.cover,)
                ),
                
                Padding(
                  padding: EdgeInsets.only(top:size.height - size.height/4),
                  child: Container(
                    width: size.width,
                    height: size.height/4,
                    color: Colors.white.withOpacity(0),
                    child: 
                    CarouselSlider(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 6),
                      autoPlayAnimationDuration: Duration(milliseconds: 500),
                      scrollDirection: Axis.horizontal,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      height: 500.0,
                      viewportFraction: 1.0,
                      onPageChanged: (index) {
                        // setState(() {
                        //   _current = index;
                        //   print(_current);
                        // });
                      },
                      items: ['assets/NoxaSignature.png','assets/ShouzenSignature.png','assets/YoeanshuSignature.png'].map((i){
                        return Builder(
                          builder: (BuildContext context) {
                            return ListView(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    height: 150.0,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.0)
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        print(i);
                                        if(i=='assets/NoxaSignature.png'){
                                          print('noxa');
                                        }else if(i=='assets/YoeanshuSignature.png'){
                                          print('yoe');
                                        }else if(i=='assets/ShouzenSignature.png'){
                                          print('shouzen');
                                        }
                                        // var route = new MaterialPageRoute(
                                        //   builder: (context) => event.context);
                                        // Navigator.push(context, route);
                                      },
                                      child: Image.asset(i, fit: BoxFit.contain),
                                    )
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                    //new Image.asset('assets/NoxaSignature.png'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}