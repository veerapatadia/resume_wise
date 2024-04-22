import 'dart:io';

import 'package:flutter/material.dart';

class Resume {
  //Contact Info Variables
  String name;
  String email;
  String phone;
  String address;

  //Carrier Objective Variables
  String carrier;
  String current;

  //Declaration Variables
  String dis;
  String dt;
  String place;

  //Personal Detail Variables
  String date;
  String nationality;
  String gender;
  List<String> languages;

  //Education Variables
  String course;
  String school1;
  String school2;
  String year;

  //Experience Variables
  String company;
  String college1;
  String college2;
  String joined;
  String exit;

  //Reference Variables
  String reference;
  String designation;
  String institute;

  //Project Variables
  String project;
  String roles;
  String technology;
  String description;
  List<String> techno;

  //Photo variable
  File? profileImageFile;
  List<String> skillsData;
  List<String> interestData;
  List<String> achievementData;
  String resumeName;

  Resume({
    required this.resumeName,
    required this.skillsData,
    required this.interestData,
    required this.achievementData,
    required this.techno,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.carrier,
    required this.current,
    required this.dis,
    required this.dt,
    required this.place,
    required this.date,
    required this.nationality,
    required this.gender,
    required this.languages,
    required this.course,
    required this.school1,
    required this.school2,
    required this.year,
    required this.company,
    required this.college1,
    required this.college2,
    required this.joined,
    required this.exit,
    required this.reference,
    required this.designation,
    required this.institute,
    required this.project,
    required this.roles,
    required this.technology,
    required this.description,
    required this.profileImageFile,
  });
}
