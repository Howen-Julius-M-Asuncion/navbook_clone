import 'package:devops_midterm/tab/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appcolors.dart';
import 'page/index.dart';

void main() {
  runApp(
    CupertinoApp(
        title: 'NavBook',
        home: MyApp(),
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
            brightness: Brightness.light
        )
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool hidePassword = true;
  String loginMsg = "";

  isLogin(String username, String password){
    if(username == "admin@navbook" && password == "123"){
      setState(() {
        _username.text = "";
        _password.text = "";
        loginMsg = "";
      });
      return true;
    }else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: AppColors.bgColor,
        resizeToAvoidBottomInset: false,
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 75,),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 80, // Set the desired width
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Column(
                children: [
                  Text('NavBook', style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  )),
                ],
              ),
            ]),
            SizedBox(height: 24,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(child:
                Text('Made by Crucians, for Crucians',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                ),
                ),
              ]),
            ),
            SizedBox(height: 25,),
            Divider(color: CupertinoColors.systemGrey3, indent: 50, endIndent: 50, /* height: 95, */),
            // SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(child:
                Text('By continuing you indicate that you agree to NavBook\'s Terms of Service and Privacy Policy.',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                ),
                ),
              ]),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: SizedBox(
                height: 45,
                child: CupertinoTextField(
                  controller: _username,
                  placeholder: 'Username',
                  padding: EdgeInsets.all(10),
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(CupertinoIcons.profile_circled, color: CupertinoColors.label,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: SizedBox(
                height: 45,
                child: CupertinoTextField(
                  controller: _password,
                  placeholder: 'Password',
                  padding: EdgeInsets.all(10),
                  obscureText: hidePassword,
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(CupertinoIcons.lock_circle, color: CupertinoColors.label,),
                  ),
                  suffix: CupertinoButton(child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Icon(
                        hidePassword? CupertinoIcons.eye_solid : CupertinoIcons.eye_slash_fill, color: CupertinoColors.label, size:24),
                  ),
                    onPressed: (){
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('$loginMsg', style: TextStyle(color: CupertinoColors.destructiveRed, fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            CupertinoButton(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: AppColors.mainColor,
                child:Text('Continue to Login',
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                ),
                onPressed: (){
                  isLogin(_username.text, _password.text) ?
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> Indexpage()))
                      : setState (() {
                    _password.text = "";
                    _username.text = "";
                    loginMsg = "Incorrect Username or Password";
                  });
                }
            ),
            SizedBox(height: 30,),
            Divider(color: CupertinoColors.systemGrey3, indent: 50, endIndent: 50, /* height: 95, */),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(child:
                Text('NavBook · Dev Ops 2 · Midterms · 2025',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                ),
                ),
              ]),
            ),
          ]),
        ),

    );
  }
}
