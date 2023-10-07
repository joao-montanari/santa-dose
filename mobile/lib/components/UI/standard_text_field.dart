import 'package:flutter/material.dart';

class StandardTextField extends StatefulWidget {
  StandardTextField({
    required this.controller,
    required this.labelText,
    this.icon,
    this.isActive = true,
    this.isRequired = false,
    this.regex = '',
    this.textInputType = TextInputType.text,
    this.passwordMode = false,
    Key? key,
  });

  final TextEditingController controller;
  final String labelText;
  bool isActive;
  bool isRequired;
  String regex;
  TextInputType textInputType;
  bool passwordMode;
  IconData? icon;

  @override
  State<StandardTextField> createState() {
    return _StandartTextField();
  }
}

class _StandartTextField extends State<StandardTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      obscureText: widget.passwordMode,
      controller: widget.controller,
      enabled: widget.isActive,
      style: const TextStyle(
        color: Colors.white70,
      ),
      validator: (value) {
        if (value!.isEmpty && widget.isRequired) {
          return 'preencha esse campo obrigatório';
        }

        RegExp regexp = RegExp(widget.regex);
        if (regexp.hasMatch(value) && widget.regex != '') {
          return 'A informação inserida não contêm caracteres válidos.';
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.icon,
              color: Colors.white70,
              size: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(widget.labelText),
            ),
          ],
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 6.0,
          horizontal: 14.0,
        ),
      ),
    );
  }
}
