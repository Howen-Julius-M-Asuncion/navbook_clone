import 'package:flutter/cupertino.dart';
import '/page/profile.dart';
import '/main.dart';
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
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(child:
      Column(
        children: [
          Text('Home')


        ],
      )
      ),
    );
  }
}
