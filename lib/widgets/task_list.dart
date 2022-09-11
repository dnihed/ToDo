import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle:task.name ,
              isChecked:task.isDone,
              chackboxCallback: (bool? checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}