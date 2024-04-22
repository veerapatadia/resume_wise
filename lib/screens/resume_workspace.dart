import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/custom_widget.dart';
import 'package:resumewise/utils/global.dart';
import 'package:resumewise/utils/text_style.dart';

class resume_workspace extends StatefulWidget {
  const resume_workspace({super.key});

  @override
  State<resume_workspace> createState() => _resume_workspaceState();
}

class _resume_workspaceState extends State<resume_workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomWidget.getAppBar(
              context: context,
              title: "Resume Workspace",
              child: Text(
                "Build Option",
                style: TextStyling.subtitle,
              ),
            ),
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...Global.allworkspace.map(
                      (e) => Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...e['data'].map(
                              (Map<String, dynamic> e) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(e['navigation']);
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: primaryBlueColor,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 5),
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              e['icon'],
                                              size: 45,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${e['label']}",
                                              style: TextStyle(
                                                color: primaryWhite,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
