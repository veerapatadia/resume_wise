import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class personaldetail extends StatefulWidget {
  const personaldetail({super.key});

  @override
  State<personaldetail> createState() => _personaldetailState();
}

class _personaldetailState extends State<personaldetail> {
  String radioStatus = "";
  bool english = false;
  bool hindi = false;
  bool gujarati = false;
  GlobalKey<FormState> personalDetailKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
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
                          height: MediaQuery.of(context).size.height / 1.35,
                          child: Form(
                            key: personalDetailKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "DOB",
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
                                                  return "Enter DOB.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.date = val ?? "";
                                              },
                                              controller: dateController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "DD/MM/YYY",
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
                                      "Gender",
                                      style: TextStyling.headings,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "male",
                                        activeColor: primaryBlueColor,
                                        groupValue: radioStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: primaryBlueColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "female",
                                        activeColor: primaryBlueColor,
                                        groupValue: radioStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: primaryBlueColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Languages Known",
                                      style: TextStyling.headings,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: english,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            english = val!;
                                          });
                                        }),
                                    Text(
                                      "English",
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
                                        value: hindi,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            hindi = val!;
                                          });
                                        }),
                                    Text(
                                      "Hindi",
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
                                        value: gujarati,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            gujarati = val!;
                                          });
                                        }),
                                    Text(
                                      "Gujarati",
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
                                            "Nationality",
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
                                                  return "Enter nationality.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.nationality = val ?? "";
                                              },
                                              controller: nationalityController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Indian",
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
                                          {
                                            personalDetailKey.currentState!
                                                .save();

                                            dateController.clear();
                                            nationalityController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              english = false;
                                              hindi = false;
                                              gujarati = false;
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
                                          Global.gender = radioStatus;

                                          if (english) {
                                            Global.languages.add("English");
                                          }
                                          if (hindi) {
                                            Global.languages.add("Hindi");
                                          }
                                          if (gujarati) {
                                            Global.languages.add("Gujarati");
                                          }
                                          if (personalDetailKey.currentState!
                                              .validate()) {
                                            personalDetailKey.currentState!
                                                .save();

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
                                                  "Personal information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );
                                            dateController.clear();
                                            nationalityController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              english = false;
                                              hindi = false;
                                              gujarati = false;
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
              title: "Personal Detail",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
