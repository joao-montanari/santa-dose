import 'package:flutter/material.dart';

class StandardDropdown extends StatefulWidget {
  StandardDropdown({
    super.key,
    required this.title,
    required this.controller,
    required this.options,
    required this.setSelect,
    this.icon,
    this.isRequired = false,
    this.selectItem = -1,
  });

  final String title;
  final TextEditingController controller;
  final List<String> options;
  final Function setSelect;
  final int selectItem;
  IconData? icon;
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
      style: const TextStyle(
        color: Colors.white,
      ),
      dropdownColor: Color.fromARGB(255, 0, 2, 66),
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
              child: Text(widget.title),
            ),
          ],
        ),
        //labelText: widget.title,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
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
