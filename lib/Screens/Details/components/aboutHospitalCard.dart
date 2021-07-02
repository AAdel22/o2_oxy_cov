import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Models/HospitalDetails.dart';

class AboutHospitalCard extends StatelessWidget {
  final HosbitalDetailsData hospitals;
  const AboutHospitalCard({Key? key, required this.hospitals})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.44,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Hospital",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.donut_small,
                            size: 8,
                          ),
                          Text(
                            "Isolation Rooms",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 30.0),
                            child: Container(
                                color: Colors.white,
                                width: 160,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${hospitals.isolationRooms}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        "Available",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.donut_small,
                          size: 8,
                        ),
                        Text(
                          "Recovery Rooms",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 26),
                          child: Container(
                              color: Colors.white,
                              width: 160,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${hospitals.recoveryRooms}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Available",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.donut_small,
                          size: 8,
                        ),
                        Text(
                          "Intensive Care",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 46),
                          child: Container(
                              color: Colors.white,
                              width: 160,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${hospitals.intensiveCareRooms}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Available",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.donut_small,
                          size: 8,
                        ),
                        Text(
                          "Oxygen Tubes",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 46),
                          child: Container(
                              color: Colors.white,
                              width: 160,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${hospitals.oxygenTubes}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Available",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
