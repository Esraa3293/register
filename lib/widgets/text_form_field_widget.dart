import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final Icon prefixIcon;
  final Icon? suffixIcon;

  const TextFormFieldWidget(this.label, this.prefixIcon,
      {this.suffixIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(label),
            labelStyle: TextStyle(color: Color(0xFFe48dde)),
            prefixIcon: prefixIcon,
            prefixIconColor: Color(0xFFe48dde),
            suffixIcon: suffixIcon,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFe48dde))
                ),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFe48dde))
                )),
      ),
    );
  }
}
