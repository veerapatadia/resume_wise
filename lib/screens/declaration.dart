import 'package:flutter/material.dart';
import 'package:resumewise/model/resume.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class declaration extends StatefulWidget {
  const declaration({super.key});

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> declarationKey = GlobalKey<FormState>();
  TextEditingController disController = TextEditingController();
  TextEditingController dtController = TextEditingController();
  TextEditingController placeController = TextEditingController();

  bool on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                (on)
                                    ? Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.6,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 130, top: 25),
                                                  child: Text(
                                                    "Declaration",
                                                    style: TextStyling.headings,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      on = !on;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 25),
                                                    child: Switch(
                                                        activeColor:
                                                            primaryBlueColor,
                                                        value: on,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            on = val;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 50, top: 10),
                                                  child: Icon(
                                                    Icons.check_circle,
                                                    size: 60,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Form(
                                              key: declarationKey,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 50),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: TextFormField(
                                                            validator: (val) {
                                                              if (val!
                                                                  .isEmpty) {
                                                                return "Enter Description";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (val) {
                                                              Global.dis =
                                                                  val ?? "";
                                                            },
                                                            controller:
                                                                disController,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  "Description",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            top: 30,
                                                            right: 20),
                                                    child: Divider(
                                                      color: secondaryGreyColor,
                                                      height: 2,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30,
                                                            left: 20,
                                                            right: 20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          90),
                                                              child: Text(
                                                                "Date",
                                                                style: TextStyling
                                                                    .secondaryLabels,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 21),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            50),
                                                                    child: Text(
                                                                      "Place(Interview",
                                                                      style: TextStyling
                                                                          .secondaryLabels,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            50),
                                                                    child: Text(
                                                                      "venue/city)",
                                                                      style: TextStyling
                                                                          .secondaryLabels,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 20),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 40,
                                                                  width: 100,
                                                                  child:
                                                                      TextFormField(
                                                                    validator:
                                                                        (val) {
                                                                      if (val!
                                                                          .isEmpty) {
                                                                        return "Enter Date";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    onSaved:
                                                                        (val) {
                                                                      Global.dt =
                                                                          val ??
                                                                              "";
                                                                    },
                                                                    controller:
                                                                        dtController,
                                                                    decoration: InputDecoration(
                                                                        border:
                                                                            OutlineInputBorder(),
                                                                        hintText:
                                                                            "DD/MM/YYYY",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            height:
                                                                                4,
                                                                            color:
                                                                                secondaryGreyColor)),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 75,
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 40,
                                                                  width: 100,
                                                                  child:
                                                                      TextFormField(
                                                                    validator:
                                                                        (val) {
                                                                      if (val!
                                                                          .isEmpty) {
                                                                        return "Enter Place";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    onSaved:
                                                                        (val) {
                                                                      Global.place =
                                                                          val ??
                                                                              "";
                                                                    },
                                                                    controller:
                                                                        placeController,
                                                                    decoration: InputDecoration(
                                                                        border:
                                                                            OutlineInputBorder(),
                                                                        hintText:
                                                                            "Eg. Surat",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            height:
                                                                                4,
                                                                            color:
                                                                                secondaryGreyColor)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 30),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              OutlinedButton(
                                                                onPressed: () {
                                                                  if (declarationKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    declarationKey
                                                                        .currentState!
                                                                        .save();

                                                                    disController
                                                                        .clear();
                                                                    dtController
                                                                        .clear();
                                                                    placeController
                                                                        .clear();
                                                                  }
                                                                },
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          40,
                                                                      vertical:
                                                                          15),
                                                                  foregroundColor:
                                                                      primaryBlueColor,
                                                                ),
                                                                child: Text(
                                                                  "Clear",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17),
                                                                ),
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  if (declarationKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    declarationKey
                                                                        .currentState!
                                                                        .save();

                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        behavior:
                                                                            SnackBarBehavior.floating,
                                                                        backgroundColor: Colors
                                                                            .green
                                                                            .shade500,
                                                                        action:
                                                                            SnackBarAction(
                                                                          label:
                                                                              "Next",
                                                                          onPressed:
                                                                              () {
                                                                            setState(() {
                                                                              Navigator.of(context).pushNamedAndRemoveUntil("homepage", (route) => false);
                                                                            });
                                                                          },
                                                                          textColor:
                                                                              primaryWhite,
                                                                        ),
                                                                        content:
                                                                            Text(
                                                                          "Education information Saved SuccessFully!!!",
                                                                        ),
                                                                      ),
                                                                    );

                                                                    disController
                                                                        .clear();
                                                                    dtController
                                                                        .clear();
                                                                    placeController
                                                                        .clear();

                                                                    Resume resume = Resume(
                                                                        interestData: Global
                                                                            .interestData,
                                                                        achievementData: Global
                                                                            .achievementData,
                                                                        skillsData: Global
                                                                            .skillsData,
                                                                        techno: Global
                                                                            .techno,
                                                                        resumeName: Global
                                                                            .resumeName,
                                                                        name: Global
                                                                            .name,
                                                                        email: Global
                                                                            .email,
                                                                        phone: Global
                                                                            .phone,
                                                                        address: Global
                                                                            .address,
                                                                        carrier: Global
                                                                            .carrier,
                                                                        current: Global
                                                                            .current,
                                                                        dis: Global
                                                                            .dis,
                                                                        dt: Global
                                                                            .dt,
                                                                        place: Global
                                                                            .place,
                                                                        date: Global
                                                                            .date,
                                                                        nationality: Global
                                                                            .nationality,
                                                                        gender: Global
                                                                            .gender,
                                                                        languages: Global
                                                                            .languages,
                                                                        course: Global
                                                                            .course,
                                                                        school1: Global
                                                                            .school1,
                                                                        school2: Global
                                                                            .school2,
                                                                        year: Global
                                                                            .year,
                                                                        company: Global
                                                                            .company,
                                                                        college1: Global
                                                                            .college1,
                                                                        college2: Global
                                                                            .college2,
                                                                        joined: Global
                                                                            .joined,
                                                                        exit: Global
                                                                            .exit,
                                                                        reference:
                                                                            Global
                                                                                .reference,
                                                                        designation:
                                                                            Global.designation,
                                                                        institute: Global.institute,
                                                                        project: Global.project,
                                                                        roles: Global.roles,
                                                                        technology: Global.technology,
                                                                        description: Global.description,
                                                                        profileImageFile: Global.profileImageFile);
                                                                    Global
                                                                        .allResume
                                                                        .add(
                                                                            resume);
                                                                    // Navigator.of(context).pushNamedAndRemoveUntil(
                                                                    //     'homepage',
                                                                    //     (route) =>
                                                                    //         false);
                                                                  }
                                                                },
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          40,
                                                                      vertical:
                                                                          15),
                                                                  foregroundColor:
                                                                      primaryWhite,
                                                                  backgroundColor:
                                                                      primaryBlueColor,
                                                                ),
                                                                child: Text(
                                                                  "Save",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17),
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
                                      )
                                    : Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                12,
                                            width: 370,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Text(
                                                    "Declaration",
                                                    style: TextStyling.headings,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      on = !on;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 100, top: 20),
                                                    child: Switch(
                                                        value: on,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            on = val;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
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
              ],
            ),
          ),
          CustomWidget.getAppBar(
            context: context,
            title: "Declaration",
            child: Container(),
          ),
        ],
      ),
    );
  }
}
