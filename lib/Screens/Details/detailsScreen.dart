import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Models/HospitalDetails.dart';
import 'package:o2_oxy_cov/Screens/Details/components/aboutHospitalCard.dart';
import 'package:o2_oxy_cov/Screens/Details/components/hospitalDetailsCard.dart';
import 'package:o2_oxy_cov/Screens/Details/components/hospitalTimeWork.dart';
import 'package:o2_oxy_cov/Services/fetchHospitals.dart';

class HospitalDetails extends StatefulWidget {
  const HospitalDetails({
    Key? key,
  }) : super(key: key);

  @override
  _HospitalDetailsState createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  late HosbitalDetailsData hospitals;

  bool load = false;

  @override
  void initState() {
    fetchHospitalDetails(12).then((value) => setState(() {
          hospitals = value;
          load = true;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospital Details"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: !load
            ? Center(
                child: Container(
                child: CircularProgressIndicator(),
              ))
            : SingleChildScrollView(
                child: Column(
                  children: [
                    HospitalsDetailsCard(
                      hospitals: hospitals,
                    ),
                    AboutHospitalCard(
                      hospitals: hospitals,
                    ),
                    hospitalTimeWork(),
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 40,
                      child: FlatButton(
                        onPressed: () {
                          /*  login("050225696", "123456")
                              .then((value) => Navigator.pop(context));*/
                        },
                        child: Text(
                          "Book appointment",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
      )),
    );
  }
}
