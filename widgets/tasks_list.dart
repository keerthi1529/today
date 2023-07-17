import 'package:flutter/material.dart';
import 'package:today/models/task_data.dart';
import 'package:today/widgets/task_file.dart';
import 'package:today/models/task.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  // final List<Task> tasks;
  // TaskList(this.tasks);
//   @override
//   State<TaskList> createState() => _TaskListState();
// }
//
// class _TaskListState extends State<TaskList> {
  // List<Task> tasks=[
  //   Task(name:'Buy milk'),
  //   Task(name:'Buy eggs'),
  //   Task(name:'Buy vegetables')
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) {
       return ListView.builder(
          itemBuilder: (context, index) {
            final task=taskData.tasks[index];
            return TaskFile(
              taskTitle: task.name,
              isChecked: task.isDone,
              // taskTitle: widget.tasks[index].name,
              // isChecked:widget.tasks[index].isDone,
              checkboxCallback: (checkboxCallback) {
                taskData.updateTask(task);
                //taskData.tasks[index].toggleDone();
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
              longPressCallback: (){
              taskData.deleteTask(task);
              },
            );
          },
          itemCount:taskData.taskCount,
        );
      }
    );
  }
  }
