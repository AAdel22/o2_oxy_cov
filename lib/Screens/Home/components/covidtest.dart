import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Symptoms.dart';

class covidTest extends StatelessWidget {
  const covidTest({
    key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/Group1763.jpg")),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "COVID-19 TEST",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Make your covid test with our best doctor",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Symptoms()));
                },
                child: Text("Symptoms"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Test"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
