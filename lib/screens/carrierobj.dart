import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class carrierobj extends StatefulWidget {
  const carrierobj({super.key});

  @override
  State<carrierobj> createState() => _carrierobjState();
}

class _carrierobjState extends State<carrierobj> {
  GlobalKey<FormState> carrierKey = GlobalKey<FormState>();
  GlobalKey<FormState> currentKey = GlobalKey<FormState>();
  TextEditingController carrierController = TextEditingController();
  TextEditingController currentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding:
                              EdgeInsets.only(top: 30, left: 20, right: 20),
                          height: MediaQuery.of(context).size.height / 3,
                          child: Form(
                            key: carrierKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Carrier Objective",
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
                                                Global.carrier = val ?? "";
                                              },
                                              controller: carrierController,
                                              maxLines: 6,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Description",
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
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding:
                              EdgeInsets.only(top: 30, left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 4.2,
                          child: Form(
                            key: currentKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Current Designation (Experienced",
                                            style: TextStyling.headings,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Candidate)",
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
                                                  return "Enter current designation.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.current = val ?? "";
                                              },
                                              controller: currentController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Software Engineer",
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            {
                              carrierKey.currentState!.save();
                              currentKey.currentState!.save();

                              carrierController.clear();
                              currentController.clear();
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
                            if (carrierKey.currentState!.validate() ||
                                currentKey.currentState!.validate()) {
                              carrierKey.currentState!.save();
                              currentKey.currentState!.save();

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.green.shade500,
                                  action: SnackBarAction(
                                    label: "Next",
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                "workspace", (route) => false);
                                      });
                                    },
                                    textColor: primaryWhite,
                                  ),
                                  content: Text(
                                    "Carrier information Saved SuccessFully!!!",
                                  ),
                                ),
                              );

                              carrierController.clear();
                              currentController.clear();
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
            CustomWidget.getAppBar(
              context: context,
              title: "Carrier Objective",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
