
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const Fielddecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5))));
const emailError = 'email-already-in-use';
const requiredField = "This field is required";
final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'email-already-in-use'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  ],
);

class PasswordTextFormField extends StatelessWidget {
  final bool obserText;
  final TextEditingController controller;
  final String name;
  final Function onTap;
  const PasswordTextFormField({
    required this.controller,
    required this.onTap,
    required this.name,
    required this.obserText,
    required String obscuringCharacter,
    required TextAlign textAlign,
    required Null Function(dynamic value) onChanged,
    required InputDecoration decoration,
    required FieldValidator<String> validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obserText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: name,
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Icon(
            obserText == true ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        ),
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
