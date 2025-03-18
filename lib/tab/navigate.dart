import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/page/profile.dart';
import '/appcolors.dart';


class Navpage extends StatefulWidget {
  const Navpage({super.key});

  @override
  State<Navpage> createState() => _NavpageState();
}

class _NavpageState extends State<Navpage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.pageColor,
      navigationBar: CupertinoNavigationBar(
        automaticBackgroundVisibility: false,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.of(
                    context,
                    rootNavigator: true).push(
                  CupertinoPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: SizedBox(
                height: 35,
                width: 35,
                child: ClipOval(
                  child: Image.asset(
                    'images/default_profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 6),
            Text(
              'Navigate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        trailing: CupertinoButton(child: Icon(CupertinoIcons.search), onPressed: (){}),
      ),
      child: SafeArea(child: Column(
        children: [
          Expanded(
            child: ListView(
              // ContentCards
              children: [
                // With attachment
                Card.filled(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row for Image
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: FittedBox(
                            fit: BoxFit.cover, // Ensures the image fills the width, even if it needs to zoom in
                            clipBehavior: Clip.hardEdge, // Prevents overflow issues
                            child: Image.asset(
                              'images/rooms/building_default.jpg',
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        // Row for Description
                        Text(
                          'Room Computer Lab A',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          softWrap: true,
                        ),
                        Row(children: [
                          Flexible(
                            child: Text(
                              'Located in SHS Building 3rd Floor',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],)
                      ]
                    ),
                  ),
                ),
                Card.filled(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row for Image
                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: FittedBox(
                              fit: BoxFit.cover, // Ensures the image fills the width, even if it needs to zoom in
                              clipBehavior: Clip.hardEdge, // Prevents overflow issues
                              child: Image.asset(
                                'images/rooms/building_default.jpg',
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Row for Description
                          Text(
                            'Room Computer Lab B',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            softWrap: true,
                          ),
                          Row(children: [
                            Flexible(
                              child: Text(
                                'Located in SHS Building 3rd Floor',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],)
                        ]
                    ),
                  ),
                ),
                Card.filled(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row for Image
                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: FittedBox(
                              fit: BoxFit.cover, // Ensures the image fills the width, even if it needs to zoom in
                              clipBehavior: Clip.hardEdge, // Prevents overflow issues
                              child: Image.asset(
                                'images/rooms/building_default.jpg',
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Row for Description
                          Text(
                            'Room CE Lab',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            softWrap: true,
                          ),
                          Row(children: [
                            Flexible(
                              child: Text(
                                'Located in SHS Building 1st Floor',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],)
                        ]
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      )),
    );
  }
}
