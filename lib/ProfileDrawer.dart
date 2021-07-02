import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/IMG_8226.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text("Alaa Taha",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                  Text("Mansoura",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "PERSONAL INFO",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "FIND HOSPITAL",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "SETTING",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "CONTACT",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "LOG OUT",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey[200],
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: ListTile(
              title: Text(
                "Support & FAQS",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[200],
                ),
              ),
              tileColor: Theme.of(context).primaryColor,
              onTap: null,
            ),
          )
        ],
      ),
    );
  }
}
