import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/page/profile.dart';
import '/appcolors.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

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
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
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
                    child: Column(
                      children: [
                        // Row for user
                        Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'images/default_profile_accent.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    'Auto Update',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Text(
                                    'Bot',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                        // Row for content
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible( // Allows text to wrap without forcing full width
                              child: Text(
                                'Your exam for Subject 1 starts at 12:00PM to 2:00PM (Monday) at Room Computer Lab A',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // Row for attachment
                        SizedBox(
                          width: double.infinity,
                          height: 175,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              'images/rooms/building_default.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Without attachment
                Card.filled(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        // Row for user
                        Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'images/default_profile.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    'Professor 1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Text(
                                    'BSCS-3A Professor | Subject 1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                        // Row for caption
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                'Your exams will include Lessons 3-8, it will be on Monday. Study your lessons.',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
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
