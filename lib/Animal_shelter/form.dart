/// Ensure you use the below two packages in the file which you are working on
import 'package:flutter/material.dart';
import 'package:mb_contact_form/mb_contact_form.dart';

class HelpForm extends StatefulWidget {
  const HelpForm({key}) : super(key: key);
  static String id = 'form';
  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        title: const Text("Appointment"),
        elevation: 0,
      ),
      body: const MBContactForm(
        hasHeading: true,
        withIcons: false,
        destinationEmail: "Stakeholder@gmail.com",
      ),
    );
  }
}
