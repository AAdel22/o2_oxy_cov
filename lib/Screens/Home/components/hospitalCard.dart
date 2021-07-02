import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Models/Hospitals.dart';
import 'package:o2_oxy_cov/Screens/Details/detailsScreen.dart';

class HospitalCard extends StatelessWidget {
  final Hospitals hospital;

  const HospitalCard({Key? key, required this.hospital}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HospitalDetails()));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(hospital.image),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 6),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              hospital.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                            /* Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ELDAKHLIA,MANSOURA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 12),
                              ),
                            ),*/
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
