import 'package:flutter/material.dart';
import 'package:pet_app/model/vaccine.dart';
import 'package:pet_app/screens/Vaxs/wideget/pet_age.dart';
import 'package:pet_app/screens/homescreen/homescreen_view.dart';
import 'package:pet_app/userdashboard/userdashboard_view.dart';
import 'package:pet_app/utils/date_time_utils.dart';

import 'wideget/vaccine_type.dart';

class addVaccine extends StatefulWidget {
  final Vaccine? vaccine;
  // final DateTime vax_date;

  const addVaccine({
    Key? key,
    this.vaccine,
    // required this.vax_date,
  }) : super(key: key);

  @override
  State<addVaccine> createState() => _addVaccineState();
}

class _addVaccineState extends State<addVaccine> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  late DateTime vax_date;
  late final bool isEmpty;
  late String newValue;
  @override
  void initState() {
    if (widget.vaccine == null) {
      vax_date = DateTime.now();
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: CloseButton(),
          actions: buildEditingActions()),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // buildTitle(),
                  SizedBox(height: 12),
                  buildDateTimePicker(),
                  SizedBox(height: 12),
                  VaccineType(),
                  SizedBox(height: 12),
                  petAge()
                  // buildVaxType(),
                ],
              ),
            )),
      ),
    );
  }

  List<Widget> buildEditingActions() => [
        ElevatedButton.icon(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Corfirm Vaccination'),
              content: const Text('Are You Sure'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  ),
                  child: const Text('Yes'),
                ),
              ],
            ),
          ),
          icon: Icon(Icons.done),
          label: Text("Save"),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
        ),
      ];
  Widget buildTitle() => TextFormField(
        style: TextStyle(fontSize: 24),
        onFieldSubmitted: (_) {},
        // decoration: InputDecoration(
        //   border: UnderlineInputBorder(),
        //   hintText: "Add Vaccine Name",
        // ),
        // validator: (title) =>
        //     title != null && this.isEmpty ? 'Title Cannot be empty' : null,
        // controller: titleController,
      );

  Widget buildDateTimePicker() => Column(
        children: [
          buildFrom(),
        ],
      );
  Widget buildFrom() => buildHeader(
        header: 'Vaccination Date',
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: buildDropdownField(
                  text: DateTimeUtils.toDate(vax_date),
                  onClicked: () => pickFromDate(pickDate: true),
                )),
            Expanded(
                child: buildDropdownField(
                    text: DateTimeUtils.toTime(vax_date),
                    onClicked: () => pickFromDate(pickDate: false)))
          ],
        ),
      );
  Widget buildDropdownField(
          {required String text, required VoidCallback onClicked}) =>
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  Widget buildHeader({required String header, required Row child}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          child
        ],
      );

  Future pickFromDate({required bool pickDate}) async {
    final date = await pickDateTime(vax_date, pickDate: pickDate);
    if (date == null) return;
    if (date.isAfter(vax_date)) {}
    setState(() => vax_date = date);
  }

  Future<DateTime?> pickDateTime(DateTime initialDate,
      {required bool pickDate, DateTime? firstDate}) async {
    if (pickDate) {
      final date = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: firstDate ?? DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (date == null) return null;
      final time =
          Duration(hours: initialDate.hour, minutes: initialDate.minute);
      return date.add(time);
    } else {
      final timeofDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );
      if (timeofDay == null) return null;
      final date =
          DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time = Duration(hours: timeofDay.hour, minutes: timeofDay.minute);
      return date.add(time);
    }
  }

  // Future saveForm() async {
  //   final isValid = _formKey.currentState!.validate();
  //   if (isValid) {
  //     final vaccine =
  //         Vaccine(vax_name: titleController.text, vax_date: vax_date);

  //         final provider = Provider.of<VaccineProvider>(context,listen)
  //   }
  // }
}
