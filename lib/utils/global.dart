import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resumewise/model/resume.dart';

class Global {
  //Global Variables
  static List<Map<String, dynamic>> allworkspace = <Map<String, dynamic>>[
    {
      'data': [
        {
          "id": 1,
          "icon": Icons.quick_contacts_mail_outlined,
          "label": "Contact Info",
          "navigation": "contact_info",
        },
        {
          "id": 2,
          "icon": Icons.shopping_bag_outlined,
          "label": "Carrier Objective",
          "navigation": "carrier_obj",
        },
      ]
    },
    {
      'data': [
        {
          "id": 3,
          "icon": Icons.account_circle_outlined,
          "label": "Personal Details",
          "navigation": "personal_details",
        },
        {
          "id": 4,
          "icon": Icons.cast_for_education_outlined,
          "label": "Education",
          "navigation": "education_info",
        },
      ]
    },
    {
      'data': [
        {
          "id": 5,
          "icon": Icons.record_voice_over,
          "label": "Experience",
          "navigation": "experience_info",
        },
        {
          "id": 6,
          "icon": Icons.military_tech,
          "label": "Technical Skills",
          "navigation": "tech_skills",
        },
      ]
    },
    {
      'data': [
        {
          "id": 7,
          "icon": Icons.menu_book_outlined,
          "label": "Interest/Hobbies",
          "navigation": "interest_hobbies",
        },
        {
          "id": 8,
          "icon": Icons.task_outlined,
          "label": "Projects",
          "navigation": "projects_info",
        },
      ]
    },
    {
      'data': [
        {
          "id": 9,
          "icon": Icons.addchart,
          "label": "Achievements",
          "navigation": "achieve_info",
        },
        {
          "id": 10,
          "icon": Icons.handshake_outlined,
          "label": "References",
          "navigation": "reference_info",
        },
      ]
    },
    {
      'data': [
        {
          "id": 11,
          "icon": Icons.newspaper_outlined,
          "label": "Declaration",
          "navigation": "declaration_info",
        },
      ]
    }
  ];

  //Technical page
  static List<TextEditingController> allskill = [
    TextEditingController(),
    TextEditingController()
  ];

  static List<String> skillsData = [];

  //Achievement page
  static List<TextEditingController> allachievement = [
    TextEditingController(),
    TextEditingController()
  ];

  static List<String> achievementData = [];

  //Interest/Hobby page
  static List<TextEditingController> allinterest = [
    TextEditingController(),
    TextEditingController()
  ];

  static List<String> interestData = [];

  static String resumeName = "";

  static List<Resume> allResume = [];

  //Contact Info Variables
  static String name = "";
  static String email = "";
  static String phone = "";
  static String address = "";

  //Carrier Objective Variables
  static String carrier = "";
  static String current = "";

  //Declaration Variables
  static String dis = "";
  static String dt = "";
  static String place = "";

  //Personal Detail Variables
  static String date = "";
  static String nationality = "";
  static String gender = "";
  static List<String> languages = [];

  //Education Variables
  static String course = "";
  static String school1 = "";
  static String school2 = "";
  static String year = "";

  //Experience Variables
  static String company = "";
  static String college1 = "";
  static String college2 = "";
  static String joined = "";
  static String exit = "";

  //Reference Variables
  static String reference = "";
  static String designation = "";
  static String institute = "";

  //Project Variables
  static String project = "";
  static String roles = "";
  static String technology = "";
  static String description = "";
  static List<String> techno = [];

  //Photo variable
  static File? profileImageFile;

  static Resume? selectedResume;
}
