import 'package:flutter/cupertino.dart';
import '/main.dart';
import '/appcolors.dart';

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
        middle: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text('About Us'),
                                    content: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                children: [
                                                  ClipOval(
                                                    child: Image.asset(
                                                      'images/devs/howen.jpg',
                                                      height: 75,
                                                      width: 75,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text('Howen Julius Asuncion'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                children: [
                                                  ClipOval(
                                                    child: Image.asset(
                                                      'images/devs/goco.jpg',
                                                      height: 75,
                                                      width: 75,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text('John Michael Goco'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                children: [
                                                  ClipOval(
                                                    child: Image.asset(
                                                      'images/devs/renz.jpg',
                                                      height: 75,
                                                      width: 75,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text('Renz Gabriel Salas'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      CupertinoButton(
                                        child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed)),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('About Us')
                        ),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: Text('Logout'),
                                    content: Text('Are you sure?'),
                                    actions: [
                                      CupertinoButton(
                                        child: Text("Yes", style: TextStyle(color: CupertinoColors.destructiveRed)),
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            CupertinoPageRoute(builder: (context) => MyApp()),
                                                (route) => false,
                                          );
                                        },
                                      ),
                                      CupertinoButton(
                                        child: Text("No"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  color: CupertinoColors.destructiveRed
                              ),
                            )
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(
                CupertinoIcons.ellipsis,
                color: CupertinoColors.darkBackgroundGray,
                size: 25,
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
                                  _username,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28,
                                  ),
                                ),
                              ]),
                              Row(children: [
                                Text(
                                  _accType,
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
                                subtitle: Text(_username),
                                trailing: CupertinoButton(
                                  onPressed: (){},
                                  child: Icon(CupertinoIcons.pencil, color: AppColors.accentColor),
                                ),
                              ),
                              CupertinoListTile(
                                leading: Icon(CupertinoIcons.mail, color: AppColors.mainColor,),
                                title: Text('Edit email'),
                                subtitle: Text(_email),
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
