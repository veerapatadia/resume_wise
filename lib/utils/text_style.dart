import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TextStyling {
  static TextStyle title = TextStyle(
    fontSize: 22,
    color: primaryWhite,
    fontWeight: FontWeight.w600,
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 20,
    color: primaryWhite,
    fontWeight: FontWeight.w500,
  );
  static TextStyle secondaryLabels = TextStyle(
    fontSize: 18,
    color: secondaryGreyColor,
  );
  static TextStyle primaryLables = TextStyle(
    fontSize: 19,
    color: primaryBlack,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headings = TextStyle(
    color: primaryBlueColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle style1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static TextStyle style2 = TextStyle(fontSize: 12.3);
  static TextStyle style3 = TextStyle(
    fontSize: 13,
  );
  static pw.TextStyle style4 = pw.TextStyle(
    fontSize: 18,
    fontWeight: pw.FontWeight.bold,
    letterSpacing: 1,
  );
  static pw.TextStyle style5 = pw.TextStyle(fontSize: 12.3);
  static pw.TextStyle style6 = pw.TextStyle(
    fontSize: 13,
  );
}
