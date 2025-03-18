import 'package:flutter/cupertino.dart';
import '/page/profile.dart';
import '/appcolors.dart';


class Notifpage extends StatefulWidget {
  const Notifpage({super.key});

  @override
  State<Notifpage> createState() => _NotifpageState();
}

class _NotifpageState extends State<Notifpage> {

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
              'Notifications',
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
                CupertinoListSection(
                  header: Text('Reminders'),
                  backgroundColor: AppColors.pageColor,
                  dividerMargin: 0,
                  children: [
                    CupertinoListTile(
                      leading: Icon(CupertinoIcons.bell, color: CupertinoColors.systemGreen,),
                      trailing: CupertinoButton(child: Icon(CupertinoIcons.ellipsis_vertical,), onPressed: (){}),
                      title: Text('Dev Ops starts in 1 hour/s'),
                      subtitle: Text('March 19, Wednesday @ 7:30 AM'),
                    ),
                    CupertinoListTile(
                      leading: Icon(CupertinoIcons.bell_slash, color: CupertinoColors.destructiveRed,),
                      trailing: CupertinoButton(child: Icon(CupertinoIcons.ellipsis_vertical,), onPressed: (){}),
                      title: Text('Operating Systems starts in 4 hour/s'),
                      subtitle: Text('March 19, Wednesday @ 10:30 AM'),
                    ),
                  ],
                ),
                CupertinoListSection(
                  header: Text('Notifications'),
                  backgroundColor: AppColors.pageColor,
                  dividerMargin: 0,
                  children: [
                    CupertinoListTile(
                      title: Text('Your request has been rejected'),
                      trailing: CupertinoButton(child: Icon(CupertinoIcons.info_circle_fill,), onPressed: (){}),
                    ),
                    CupertinoListTile(
                      title: Text('Your request has been submitted'),
                      trailing: CupertinoButton(child: Icon(CupertinoIcons.info_circle_fill,), onPressed: (){}),
                    ),
                    CupertinoListTile(
                      title: Text('A new schedule has been added'),
                      subtitle: Text('Exams Midterms'),
                    ),
                    CupertinoListTile(
                      title: Text('A new schedule has been added'),subtitle: Text('BSCS-3A'),
                    ),
                    CupertinoListTile(
                      title: Text('You have been enrolled in BSCS-3A'),
                    ),
                  ],
                )
              ],
            )
          ),
        ],
      )),
    );
  }
}
