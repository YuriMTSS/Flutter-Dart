// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Go to Gym',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            decoration: (selected) ? TextDecoration.lineThrough : null),
      ),
      leading: CircularCheckBox(
        value: selected,
        checkColor: Colors.black,
        activeColor: Colors.yellow,
        inactiveColor: Colors.grey,
        disabledColor: Colors.yellow,
        onChanged: (val) {
          selected = !selected;
        },
      ),
    );
  }
}
