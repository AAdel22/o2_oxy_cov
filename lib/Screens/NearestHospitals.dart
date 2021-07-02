import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Screens/Details/detailsScreen.dart';

class NearestHospitals extends StatefulWidget {
  const NearestHospitals({Key? key}) : super(key: key);

  @override
  _NearestHospitalsState createState() => _NearestHospitalsState();
}

class _NearestHospitalsState extends State<NearestHospitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearest Hospitals"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 120,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.33,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HospitalDetails()));
                          },
                          child: Card(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 18.0, left: 8),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.17,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://gate.ahram.org.eg/Media/News/2021/2/23/6_2021-637497055601550060-155.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 6),
                                    child: Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Mansoura International Hospital",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "ELDAKHLIA,MANSOURA",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.grey,
                                                ),
                                                Text(
                                                  "2 km",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
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
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
