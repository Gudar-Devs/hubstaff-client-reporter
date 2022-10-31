import 'package:flutter/material.dart';

class AddVehicleFormField extends StatelessWidget {
  AddVehicleFormField(
      {Key? key,
      required this.title,
      this.vehicleData,
      required this.label,
      this.mandatory,
      this.initialValue,
      this.onChanged,
      this.autoValidate,
      this.validator,
      required this.obcureText,
      required this.readOnly})
      : super(key: key);
  String title = '';
  String? vehicleData = '';
  String label = '';
  bool? mandatory = false;
  String? initialValue;
  bool obcureText;

  bool readOnly;
  AutovalidateMode? autoValidate;
  FormFieldValidator<String>? validator;
  Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(title, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 9),
                const SizedBox(width: 5),
                mandatory == true
                    ? const Text('*',
                        style: TextStyle(color: Colors.red, fontSize: 15))
                    : const Text(
                        '',
                      )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              height: 50,
              width: double.infinity,
              child: TextFormField(
                onChanged: onChange,
                // validator: validateNotEmpty,
                readOnly: readOnly,
                initialValue: initialValue,
                autovalidateMode: autoValidate,
                obscureText: obcureText,
                validator: validator,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: label,
                    labelStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0))),
              ),
            ),
          ]),
    );
  }
}
