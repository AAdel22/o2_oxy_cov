import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Models/HospitalDetails.dart';

class HospitalsDetailsCard extends StatelessWidget {
  final HosbitalDetailsData hospitals;

  const HospitalsDetailsCard({Key? key, required this.hospitals})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  width: 150,
                  height: 150,
                  image: NetworkImage(hospitals.image)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospitals.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Eldakhliya, Mansoura",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellowAccent,
                        ),
                        Text(
                          "(25)",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            Text(
                              "2 km",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    )
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
