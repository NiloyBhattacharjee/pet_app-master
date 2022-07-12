import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Vaccine {
  final String vax_name;
  final String vax_desc;
  final DateTime vax_date;
  final Color backgroundColor;
  const Vaccine(
      {required this.vax_name,
      required this.vax_desc,
      required this.vax_date,
      this.backgroundColor = Colors.lightGreen});
}
