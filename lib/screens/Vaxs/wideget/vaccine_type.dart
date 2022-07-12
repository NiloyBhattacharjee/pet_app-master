import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter {
  Rabies,
  Panleukopenia,
  FelineCalicivirus,
  FelineViralRhinotracheitis
}

class VaccineType extends StatefulWidget {
  const VaccineType({Key? key}) : super(key: key);

  @override
  State<VaccineType> createState() => _VaccineTypeState();
}

class _VaccineTypeState extends State<VaccineType> {
  SingingCharacter? _character = SingingCharacter.Rabies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RichText(
            text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(
                text: 'Choose Vaccine',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        )),
        RadioListTile<SingingCharacter>(
          title: const Text('Rabies'),
          value: SingingCharacter.Rabies,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Panleukopenia'),
          value: SingingCharacter.Panleukopenia,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Feline Calicivirus'),
          value: SingingCharacter.FelineCalicivirus,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Feline Viral Rhinotracheitis'),
          value: SingingCharacter.FelineViralRhinotracheitis,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
