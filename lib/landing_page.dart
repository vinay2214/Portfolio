import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc = "Fresher";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
                child: Image.asset(
                  "assets/profilepic.jpg",
                  width: 150,
                  height: 150,
                )),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Vinay Singh",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Connect with me",style: TextStyle(
              color:Colors.white,
              fontSize: 14.0,

            ),),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.facebook.com/vinay.k.singh.12");
                  },

                  child: Image.asset("assets/facebook.png",width: 23.0,height: 23.0,)),
                SizedBox(
                  width: 16.0,
                ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.instagram.com/vinay__2214/?hl=en");
                  },

                  child: Image.asset("assets/instagram.png",width: 23.0,height: 23.0,)),
                SizedBox(
                  width: 16.0,
                ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://twitter.com/vinaysingh2214");
                  },
                  child: Image.asset("assets/twitter.png",width: 23.0,height: 23.0,)),
                SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
          GestureDetector(
            onTap: (){
              _launchURL("https://www.linkedin.com/in/vinay-singh-158341196/");
            },
                          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    colors:[const Color(0xffA2834D),
                        const Color(0xffBC9A5F)]
                  ),
                ),
                child: Text("Download My Resume",
                style: TextStyle(
                  color:Colors.white,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
