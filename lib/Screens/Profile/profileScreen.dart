import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/IMG_8226.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Alaa Taha",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 00.0, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        profileBtn("PERSONAL INFO", () {
                          //Navigator.push(context,
                          //  MaterialPageRoute(builder: (c) => EditProfile()));
                        }),
                        profileBtn("FIND HOSPITAL", () {}),
                        profileBtn("SETTING", () {}),
                        profileBtn("CONTACT", () {
                          //   Navigator.push(context,
                          //     MaterialPageRoute(builder: (c) => AboutApp()));
                        }),
                        profileBtn("LOG OUT", () {}),
                        profileBtn("Privacy Policy", () {
                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (c) => Privace()));
                        }),
                        profileBtn("Support & FAQS", () {}),
                        SizedBox(
                          height: 40,
                        ),
                        profileBtn("Logout", () {}),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileBtn(String title, Function ontap) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        //  onTap: ontap,
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
