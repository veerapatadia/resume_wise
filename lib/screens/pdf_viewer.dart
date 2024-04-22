import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';
import 'package:resumewise/utils/toast_Message.dart';

class pdf_viewer extends StatefulWidget {
  const pdf_viewer({super.key});

  @override
  State<pdf_viewer> createState() => _pdf_viewerState();
}

class _pdf_viewerState extends State<pdf_viewer> {
  final pw.Document pdf = pw.Document();
  @override
  void initState() {
    super.initState();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  //color: Colors.red,
                  child: pw.Padding(
                    padding: pw.EdgeInsets.only(right: 16, left: 16, top: 15),
                    child: pw.Column(
                      children: [
                        pw.Row(
                          children: [
                            pw.Text(
                              Global.resumeName,
                              style: pw.TextStyle(
                                  fontSize: 33, fontWeight: pw.FontWeight.bold),
                            ),
                          ],
                        ),
                        pw.Row(
                          children: [
                            pw.Text(
                              Global.designation,
                              style: pw.TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        pw.Divider(
                          color: PdfColors.black,
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  //color: Colors.amber,
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          child: pw.Container(
                            height: 150,
                            width: 150,
                            //child: pw.Image(
                            // pw.MemoryImage(
                            //   Global.selectedResume!.profileImageFile
                            //       .readAsBytesSync(),
                            // ),
                            //),
                            decoration: pw.BoxDecoration(
                              shape: pw.BoxShape.circle,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 3,
                        child: pw.Container(
                          //color: Colors.amber,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.only(left: 25),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "CARRIER DETAIL",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(
                                    left: 4,
                                  ),
                                  child: pw.Column(
                                    children: [
                                      pw.Column(
                                        children: [
                                          pw.Text(
                                            Global.carrier,
                                            style: TextStyling.style5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Expanded(
                flex: 11,
                child: pw.Container(
                  //color: Colors.blue,
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 3,
                        child: pw.Container(
                          //color: Colors.red,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.only(left: 16, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "CONTACT",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    // pw.Icon(
                                    //   Icons.phone,
                                    //   size: 18,
                                    // ),
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(
                                        Global.phone,
                                        style: TextStyling.style5,
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    // pw.Icon(
                                    //   Icons.email,
                                    //   size: 18,
                                    // ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(
                                        Global.email,
                                        style: TextStyling.style5,
                                      ),
                                    )
                                  ],
                                ),
                                // Icon(Icons.location_on),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 30),
                                  child: pw.Column(
                                    children: [
                                      pw.Column(
                                        children: [
                                          pw.Text(
                                            Global.address,
                                            style: TextStyling.style5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DETAILS",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DOB",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.date,
                                      style: TextStyling.style5,
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Gender",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.gender,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Languages Known",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.languages.map(
                                      (e) => pw.Text(
                                        e,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Nationality",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.nationality,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "EDUCATION",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Course/Degree",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.course,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.school1,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.school2,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Year Of Pass",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.year,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.interestData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Scrolling Reels",
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "TECH SKILLS ",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.skillsData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 4,
                        child: pw.Container(
                          // color: Colors.blue,
                          child: pw.Padding(
                            padding:
                                const pw.EdgeInsets.only(left: 16, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "EXPERIENCE",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Company Name",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.company,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.college1,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Roles",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          Global.college2,
                                          style: TextStyling.style5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Employee Status",
                                      style: TextStyling.style6,
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Previous Employee",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date Joined",
                                      style: TextStyling.style5,
                                    ),
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 20),
                                      child: pw.Text(
                                        Global.joined,
                                        style: TextStyling.style5,
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date Exit",
                                      style: TextStyling.style5,
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 37),
                                      child: pw.Text(
                                        Global.exit,
                                        style: TextStyling.style5,
                                      ),
                                    )
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "PROJECTS",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Title",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.project,
                                      style: TextStyling.style5,
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.techno.map(
                                      (e) => pw.Text(
                                        e,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Roles",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.roles,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.technology,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Description",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.description,
                                      style: TextStyling.style5,
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DECLARATION",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Description",
                                      style: TextStyling.style6,
                                    ),
                                  ],
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          Global.dis,
                                          style: TextStyling.style5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date",
                                      style: TextStyling.style6,
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 37),
                                      child: pw.Text(
                                        Global.dt,
                                        style: TextStyling.style5,
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Place",
                                      style: TextStyling.style6,
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 30),
                                      child: pw.Text(
                                        Global.place,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "ACHIEVEMENT",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.achievementData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: TextStyling.style5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          Global.resumeName,
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          Global.designation,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.file(
                            Global.selectedResume!.profileImageFile!),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      //color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "CARRIER DETAIL",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        Global.carrier,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              //color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      //color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "CONTACT",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    Global.phone,
                                    style: TextStyling.style2,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    Global.email,
                                    style: TextStyling.style2,
                                  ),
                                )
                              ],
                            ),
                            // Icon(Icons.location_on),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        Global.address,
                                        style: TextStyling.style2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "DETAILS",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "DOB",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.date,
                                  style: TextStyling.style2,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Marital Status",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.gender,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Languages Known",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.languages.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Nationality",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.nationality,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "EDUCATION",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Course/Degree",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.course,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.school1,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.school2,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Year Of Pass",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.year,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "HOBBY",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.interestData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "TECH SKILLS ",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.skillsData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      // color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "EXPERIENCE",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Company Name",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.company,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.college1,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Roles",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      Global.college2,
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Employee Status",
                                  style: TextStyling.style3,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Previous Employee",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date Joined",
                                  style: TextStyling.style2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    Global.joined,
                                    style: TextStyling.style2,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date Exit",
                                  style: TextStyling.style2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 37),
                                  child: Text(
                                    Global.exit,
                                    style: TextStyling.style2,
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "PROJECTS",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Project Title",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.project,
                                  style: TextStyling.style2,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Technologies",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.techno.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Roles",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.roles,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Technologies",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.technology,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Project Description",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.description,
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "DECLARATION",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyling.style3,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      Global.dis,
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyling.style3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 37),
                                  child: Text(
                                    Global.dt,
                                    style: TextStyling.style2,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Place",
                                  style: TextStyling.style3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    Global.place,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "ACHIEVEMENT",
                                  style: TextStyling.style1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.achievementData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyling.style2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FloatingActionButton(
                  onPressed: () async {
                    final Directory? directory =
                        await getExternalStorageDirectory();
                    final File file = File(
                        "${directory!.path}/${Global.selectedResume!.resumeName}.pdf");
                    await file.writeAsBytes(await pdf.save());
                    toastMessage(context: context, message: "pdf saved....");
                  },
                  child: Icon(Icons.download),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
