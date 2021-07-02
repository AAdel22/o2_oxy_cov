import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Models/Hospitals.dart';
import 'package:o2_oxy_cov/ProfileDrawer.dart';
import 'package:o2_oxy_cov/Screens/Home/components/covidtest.dart';
import 'package:o2_oxy_cov/Screens/Home/components/hospitalCard.dart';
import 'package:o2_oxy_cov/Screens/Home/components/searchBar.dart';
import 'package:o2_oxy_cov/Screens/NearestHospitals.dart';
import 'package:o2_oxy_cov/Services/fetchHospitals.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Hospitals> hospital = [];

  @override
  void initState() {
    fetchHospital().then((value) => setState(() {
          hospital = value;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OXY COVID19",
        ),
      ),
      drawer: ProfileDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchField(),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hospital.length,
                  itemBuilder: (context, index) {
                    return HospitalCard(
                      hospital: hospital[index],
                    );
                  },
                ),
              ),
              covidTest(),
              Image(image: AssetImage("assets/images/Group1803.jpg")),
              Container(
                color: Colors.grey[200],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.coronavirus,
                          color: Colors.blue,
                          size: 50,
                        ),
                        onPressed: () {
                          setState(() {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Covid19Data()));*/
                          });
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.local_hospital_outlined,
                          color: Colors.blue,
                          size: 50,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NearestHospitals()));
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
