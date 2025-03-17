import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'appcolors.dart';
import 'profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  String _selectedPage = 'Home';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticBackgroundVisibility: false,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero, // Remove default padding
              onPressed: () {
                Navigator.of(
                    context,
                    rootNavigator: true).push(
                  CupertinoPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: SizedBox(
                height: 30,
                width: 30,
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
              '$_selectedPage',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('Developers'),
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
              child: Icon(
                CupertinoIcons.info_circle,
                color: CupertinoColors.darkBackgroundGray,
                size: 25,
              ),
            ),
            // ------------- LOGOUT ICON -------------
            CupertinoButton(
              padding: EdgeInsets.zero,
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
              child: Icon(
                CupertinoIcons.arrow_uturn_left_circle,
                color: CupertinoColors.darkBackgroundGray,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(child: Column(

      )),
    );
  }
}
