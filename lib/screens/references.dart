import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class references extends StatefulWidget {
  const references({super.key});

  @override
  State<references> createState() => _referencesState();
}

class _referencesState extends State<references> {
  GlobalKey<FormState> referenceKey = GlobalKey<FormState>();
  TextEditingController referenceController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController instituteController = TextEditingController();

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
                    height: 190,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 180, left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 30, left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 1.75,
                          color: Colors.white,
                          child: Form(
                            key: referenceKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Reference Name",
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
                                                  return "Enter reference name.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.reference = val ?? "";
                                              },
                                              controller: referenceController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Suresh Shah",
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
                                            "Designation",
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
                                                  return "Enter designation.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.designation = val ?? "";
                                              },
                                              controller: designationController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Marketing Manager, ID-342332",
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
                                            "Organization/Institute",
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
                                                  return "Enter organization/institute.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.institute = val ?? "";
                                              },
                                              controller: instituteController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "Green Energy Pvt. Ltd.",
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
                                          if (referenceKey.currentState!
                                              .validate()) {
                                            referenceKey.currentState!.save();

                                            referenceController.clear();
                                            designationController.clear();
                                            instituteController.clear();
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
                                          if (referenceKey.currentState!
                                              .validate()) {
                                            referenceKey.currentState!.save();

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
                                                  "Reference information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );

                                            referenceController.clear();
                                            designationController.clear();
                                            instituteController.clear();
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
              title: "References",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
