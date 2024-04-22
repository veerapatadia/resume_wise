import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class projects extends StatefulWidget {
  const projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  String radioStatus = "";
  bool cprogram = false;
  bool C = false;
  bool flutter = false;
  GlobalKey<FormState> projectKey = GlobalKey<FormState>();
  TextEditingController projectController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController technologyController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
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
                          height: MediaQuery.of(context).size.height / 1.05,
                          child: Form(
                            key: projectKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Project Title",
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
                                                  return "Enter project title.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.project = val ?? "";
                                              },
                                              controller: projectController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Resume Wise App",
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
                                Row(
                                  children: [
                                    Text(
                                      "Technologies",
                                      style: TextStyling.headings,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: cprogram,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            cprogram = val!;
                                          });
                                        }),
                                    Text(
                                      "C Programming",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: secondaryGreyColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: C,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            C = val!;
                                          });
                                        }),
                                    Text(
                                      "C++",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: secondaryGreyColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: flutter,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            flutter = val!;
                                          });
                                        }),
                                    Text(
                                      "Flutter",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: secondaryGreyColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Roles",
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
                                                Global.roles = val ?? "";
                                              },
                                              controller: rolesController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Organize team members, Code analysis",
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
                                            "Technologies",
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
                                                  return "Enter technology.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.technology = val ?? "";
                                              },
                                              controller: technologyController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "5 - Programmers",
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
                                            "Project Description",
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
                                                  return "Enter project description.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.description = val ?? "";
                                              },
                                              controller: descriptionController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Enter Your Project Description",
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
                                          if (projectKey.currentState!
                                              .validate()) {
                                            projectKey.currentState!.save();

                                            projectController.clear();
                                            rolesController.clear();
                                            technologyController.clear();
                                            descriptionController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              cprogram = false;
                                              C = false;
                                              flutter = false;
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
                                          if (cprogram) {
                                            Global.techno.add("C Programming");
                                          }
                                          if (C) {
                                            Global.techno.add("C++");
                                          }
                                          if (flutter) {
                                            Global.techno.add("Flutter");
                                          }
                                          if (projectKey.currentState!
                                              .validate()) {
                                            projectKey.currentState!.save();

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
                                                  "Project information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );

                                            projectController.clear();
                                            rolesController.clear();
                                            technologyController.clear();
                                            descriptionController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              cprogram = false;
                                              C = false;
                                              flutter = false;
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
              title: "Project",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
