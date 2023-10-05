import 'package:flutter/material.dart';

class StandardDropdown extends StatefulWidget {
  StandardDropdown({
    super.key,
    required this.title,
    required this.controller,
    required this.options,
    required this.setSelect,
    this.isRequired = false,
    this.selectItem = -1,
  });

  final String title;
  final TextEditingController controller;
  final List<String> options;
  final Function setSelect;
  final int selectItem;
  bool isRequired;

  @override
  State<StandardDropdown> createState() {
    return _StandardDropdown();
  }
}

class _StandardDropdown extends State<StandardDropdown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: widget.selectItem == -1 ? null : widget.options[widget.selectItem],
      onChanged: (value) {
        setState(() {
          widget.controller.text = value!;
          widget.setSelect(value);
        });
      },
      validator: (value) {
        if (value == null && widget.isRequired) {
          return 'preencha esse campo obrigatório';
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.title,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      ),
      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
