import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appcolors.dart';
import 'main.dart';

//Placeholders
String _username = "John Doe";
String _accType = "Student";

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.pageColor,
      navigationBar: CupertinoNavigationBar(
        automaticBackgroundVisibility: false,
        automaticallyImplyLeading: true,
        middle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Profile',
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
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  color: Color(0xFFF2F2F2),
                  width: 100,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipOval(
                                child: Image.asset(
                                  'images/default_profile.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 36,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              SizedBox(height: 45,),
                              Text(
                                '$_username',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                            ]),
                            Row(children: [
                              Text(
                                '$_accType',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ])
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  color: Color(0xFFF2F2F2),
                  width: 100,
                  height: 175,
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Column(children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Divider(thickness: 100,),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ])
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
