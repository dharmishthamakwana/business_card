import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../utiles/globle.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final image = MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.27,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: image,
                    width: width * 0.15,
                    height: height / 10,
                  ),
                  // SizedBox(
                  //   height: height * 0.02,
                  // ),
                  Text(
                    Global.companyName,
                    style: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: height / 300,
                  // ),
                  Text(
                    Global.tagLine,
                    style: TextStyle(color: Colors.blueGrey.shade300),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blueGrey.shade900,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Global.name,
                            style: TextStyle(
                                color: Colors.blueGrey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            Global.position,
                            style: TextStyle(color: Colors.blueGrey.shade500),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image(
                        image: image,
                        width: width * 0.13,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: width,
                    height: height * 0.1,
                    color: Colors.blueGrey.shade900,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              Global.contact,
                              style: TextStyle(color: Colors.blueGrey.shade100),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            Text(
                              Global.email,
                              style: TextStyle(color: Colors.blueGrey.shade100),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.blueGrey.shade300,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              Global.add,
                              style: TextStyle(color: Colors.blueGrey.shade100),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
