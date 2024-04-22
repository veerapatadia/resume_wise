import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class experience extends StatefulWidget {
  const experience({super.key});

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  String? employee;
  GlobalKey<FormState> experienceKey = GlobalKey<FormState>();
  TextEditingController joinedController = TextEditingController();
  TextEditingController exitController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController college1Controller = TextEditingController();
  TextEditingController college2Controller = TextEditingController();
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
                          height: MediaQuery.of(context).size.height / 1.23,
                          child: Form(
                            key: experienceKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Company Name",
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
                                                  return "Enter company name.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.company = val ?? "";
                                              },
                                              controller: companyController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "New Enterprice, San Francisco",
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
                                                Global.college1 = val ?? "";
                                              },
                                              controller: college1Controller,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Quality Test Engineer",
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
                                            "Roles (optional)",
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
                                                  return "Enter roles.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.college2 = val ?? "";
                                              },
                                              controller: college2Controller,
                                              maxLines: 3,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Working with team members to come up with new concepts and product analysis...",
                                                hintStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Employeed Status",
                                                  style: TextStyle(
                                                    color: secondaryGreyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      employee = "previous";
                                                    });
                                                  },
                                                  child: Radio(
                                                      value: "previous",
                                                      groupValue: employee,
                                                      activeColor:
                                                          primaryBlueColor,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          employee = val!;
                                                        });
                                                      }),
                                                ),
                                                Text(
                                                  "Previously Employed",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: primaryBlueColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      employee = "current";
                                                      ;
                                                    });
                                                  },
                                                  child: Radio(
                                                      value: "current",
                                                      groupValue: employee,
                                                      activeColor:
                                                          primaryBlueColor,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          employee = val!;
                                                        });
                                                      }),
                                                ),
                                                Text(
                                                  "Currently Employed",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: primaryBlueColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              height: 20,
                                            ),
                                            if (employee == "previous")
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 50),
                                                        child: Text(
                                                          "Date Joined",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 19,
                                                            color:
                                                                secondaryGreyColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 48),
                                                        child: Text(
                                                          "Date Exit",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 19,
                                                            color:
                                                                secondaryGreyColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 50,
                                                          child: TextFormField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: (val) {
                                                              if (val!
                                                                  .isEmpty) {
                                                                return "Enter joined date.";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (val) {
                                                              Global.joined =
                                                                  val ?? "";
                                                            },
                                                            controller:
                                                                joinedController,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  "DD/MM/YYYY",
                                                              hintStyle:
                                                                  TextStyle(
                                                                      height:
                                                                          5),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 80,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 50,
                                                          child: TextFormField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: (val) {
                                                              if (val!
                                                                  .isEmpty) {
                                                                return "Enter exit date.";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (val) {
                                                              Global.exit =
                                                                  val ?? "";
                                                            },
                                                            controller:
                                                                exitController,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  "DD/MM/YYYY",
                                                              hintStyle:
                                                                  TextStyle(
                                                                height: 5,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            else if (employee == "current")
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Date Joined",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 19,
                                                          color:
                                                              secondaryGreyColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 50,
                                                          child: TextFormField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: (val) {
                                                              if (val!
                                                                  .isEmpty) {
                                                                return "Enter joined date.";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (val) {
                                                              Global.joined =
                                                                  val ?? "";
                                                            },
                                                            controller:
                                                                joinedController,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  "DD/MM/YYYY",
                                                              hintStyle:
                                                                  TextStyle(
                                                                height: 5,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 200,
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          if (experienceKey.currentState!
                                              .validate()) {
                                            experienceKey.currentState!.save();

                                            companyController.clear();
                                            college1Controller.clear();
                                            college2Controller.clear();
                                            joinedController.clear();
                                            exitController.clear();

                                            setState(() {
                                              employee = "";
                                            });
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
                                          if (experienceKey.currentState!
                                              .validate()) {
                                            experienceKey.currentState!.save();

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
                                                  "Experience information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );

                                            companyController.clear();
                                            college1Controller.clear();
                                            college2Controller.clear();
                                            joinedController.clear();
                                            exitController.clear();

                                            setState(() {
                                              employee = "";
                                            });
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
              title: "Experience",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
