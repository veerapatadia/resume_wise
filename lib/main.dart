import 'package:flutter/material.dart';
import 'package:resumewise/screens/achievements.dart';
import 'package:resumewise/screens/carrierobj.dart';
import 'package:resumewise/screens/contact_info.dart';
import 'package:resumewise/screens/declaration.dart';
import 'package:resumewise/screens/education.dart';
import 'package:resumewise/screens/experience.dart';
import 'package:resumewise/screens/homepage.dart';
import 'package:resumewise/screens/interest.dart';
import 'package:resumewise/screens/pdf_viewer.dart';
import 'package:resumewise/screens/personal_details.dart';
import 'package:resumewise/screens/projects.dart';
import 'package:resumewise/screens/references.dart';
import 'package:resumewise/screens/resume_workspace.dart';
import 'package:resumewise/screens/splashscreen_dart.dart';
import 'package:resumewise/screens/techskill.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => splashscreen(),
      'homepage': (context) => homepage(),
      'workspace': (context) => resume_workspace(),
      'contact_info': (context) => contactinfo(),
      'carrier_obj': (context) => carrierobj(),
      'personal_details': (context) => personaldetail(),
      'education_info': (context) => education(),
      'experience_info': (context) => experience(),
      'tech_skills': (context) => techskills(),
      'interest_hobbies': (context) => interest_hobbies(),
      'projects_info': (context) => projects(),
      'achieve_info': (context) => Achievements(),
      'reference_info': (context) => references(),
      'declaration_info': (context) => declaration(),
      'pdf_viewer': (context) => pdf_viewer(),
    }),
  );
}
