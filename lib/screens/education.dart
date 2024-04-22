import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  GlobalKey<FormState> educationKey = GlobalKey<FormState>();
  TextEditingController courseController = TextEditingController();
  TextEditingController school1Controller = TextEditingController();
  TextEditingController school2Controller = TextEditingController();
  TextEditingController yearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 100, left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding:
                              EdgeInsets.only(left: 25, right: 25, top: 20),
                          height: MediaQuery.of(context).size.height / 1.37,
                          child: Form(
                            key: educationKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Course/Degree",
                                            style: TextStyling.headings,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter course/degree.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.course = val ?? "";
                                              },
                                              controller: courseController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "B .Tech Information Technology",
                                                hintStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "School/College/Institute",
                                            style: TextStyling.headings,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter school/college/institute.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.school1 = val ?? "";
                                              },
                                              controller: school1Controller,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Bhagvan mahavir Univercity",
                                                hintStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "School/College/Institute",
                                            style: TextStyling.headings,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter school/college/institute.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.school2 = val ?? "";
                                              },
                                              controller: school2Controller,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "70% (or) 70 CGPA",
                                                hintStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Year Of Pass",
                                            style: TextStyling.headings,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter year Of Pass.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.year = val ?? "";
                                              },
                                              controller: yearController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "2019",
                                                hintStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          if (educationKey.currentState!
                                              .validate()) {
                                            educationKey.currentState!.save();

                                            courseController.clear();
                                            school1Controller.clear();
                                            school2Controller.clear();
                                            yearController.clear();
                                          }
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 15),
                                          foregroundColor: primaryBlueColor,
                                        ),
                                        child: Text(
                                          "Clear",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (educationKey.currentState!
                                              .validate()) {
                                            educationKey.currentState!.save();

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor:
                                                    Colors.green.shade500,
                                                action: SnackBarAction(
                                                  label: "Next",
                                                  onPressed: () {
                                                    setState(() {
                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              "workspace",
                                                              (route) => false);
                                                    });
                                                  },
                                                  textColor: primaryWhite,
                                                ),
                                                content: Text(
                                                  "Education information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );

                                            courseController.clear();
                                            school1Controller.clear();
                                            school2Controller.clear();
                                            yearController.clear();
                                          }
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 15),
                                          foregroundColor: primaryWhite,
                                          backgroundColor: primaryBlueColor,
                                        ),
                                        child: Text(
                                          "Save",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomWidget.getAppBar(
              context: context,
              title: "Education",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
