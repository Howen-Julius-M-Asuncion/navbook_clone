import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appcolors.dart';

//Placeholders
String _username = "John Doe";
String _accType = "Student";
String _email = "admin@navbook";

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
                  height: 140,
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(width: 24,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 18,),
                            Row(children: [
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
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  onChanged: () {
                    Form.maybeOf(primaryFocus!.context!)?.save();
                  },
                  child: CupertinoFormSection.insetGrouped(
                    header: Text('Edit Profile'),
                    children: [
                      Column(
                        children: [
                          CupertinoListTile(
                            leading:  SizedBox(
                              child: ClipOval(
                                child: Image.asset(
                                  'images/default_profile.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text('Edit Photo'),
                            trailing: CupertinoButton(
                              onPressed: (){},
                              child: Icon(CupertinoIcons.pencil, color: AppColors.accentColor),
                            ),
                          ),
                          CupertinoListTile(
                            leading: Icon(CupertinoIcons.at_circle, color: AppColors.mainColor,),
                            title: Text('Edit username'),
                            subtitle: Text('$_username'),
                            trailing: CupertinoButton(
                              onPressed: (){},
                              child: Icon(CupertinoIcons.pencil, color: AppColors.accentColor),
                            ),
                          ),
                          CupertinoListTile(
                            leading: Icon(CupertinoIcons.mail, color: AppColors.mainColor,),
                            title: Text('Edit email'),
                            subtitle: Text('$_email'),
                            trailing: CupertinoButton(
                              onPressed: (){},
                              child: Icon(CupertinoIcons.pencil, color: AppColors.accentColor),
                            ),
                          ),
                          CupertinoListTile(
                            leading: Icon(CupertinoIcons.lock_circle, color: AppColors.mainColor,),
                            title: Text('Edit password'),
                            trailing: CupertinoButton(
                              onPressed: (){},
                              child: Icon(CupertinoIcons.pencil, color: AppColors.accentColor),
                            ),
                          ),
                        ]
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFFF2F2F2),
                  width: 100,
                  height: 25,
                  // child: Padding(
                  //   padding: EdgeInsets.all(14),
                  //   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       CupertinoButton(
                  //         onPressed: (){},
                  //         child: Text('data')
                  //       )
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            )
          ),
        ],
      )),
    );
  }
}
