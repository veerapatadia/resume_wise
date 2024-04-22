import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/toast_Message.dart';

class interest_hobbies extends StatefulWidget {
  const interest_hobbies({super.key});

  @override
  State<interest_hobbies> createState() => _interest_hobbiesState();
}

class _interest_hobbiesState extends State<interest_hobbies> {
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
                    padding: EdgeInsets.only(bottom: 440, left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                              top: 30, left: 20, right: 20, bottom: 20),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                "Enter your interest/hobbies",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ...Global.allinterest.map(
                                (e) => Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: e,
                                        decoration: InputDecoration(
                                          hintText: "Dynamic",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey.shade400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            Global.allinterest.remove(e);
                                          });
                                        },
                                        icon: Icon(Icons.delete)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      Global.allinterest
                                          .add(TextEditingController());
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        Global.allinterest.forEach(
                                          (element) {
                                            element.clear();
                                          },
                                        );
                                        setState(() {
                                          Global.allinterest = [
                                            TextEditingController(),
                                            TextEditingController(),
                                          ];
                                        });
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
                                        Global.allinterest.forEach(
                                          (element) {
                                            Global.interestData
                                                .add(element.text);
                                          },
                                        );
                                        toastMessage(
                                            context: context,
                                            message:
                                                "Interest/Hobby information added successfully!!");

                                        Global.allinterest.forEach(
                                          (element) {
                                            element.clear();
                                          },
                                        );
                                        setState(() {
                                          Global.allinterest = [
                                            TextEditingController(),
                                            TextEditingController(),
                                          ];
                                        });
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomWidget.getAppBar(
              context: context,
              title: "Interest/Hobbies",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
