import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.isChecked, this.taskTitle, this.chackboxCallback, this.longPressCallback});
  bool isChecked = false;
  final String? taskTitle;
  final Function(bool?)? chackboxCallback;
  final Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: chackboxCallback,
      ),
    );
  }
}


