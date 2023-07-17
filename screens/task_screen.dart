import 'package:flutter/material.dart';
import 'package:today/widgets/tasks_list.dart';
import 'package:today/screens/add_task_screen.dart';
import 'package:today/models/task.dart';
import 'package:provider/provider.dart';
import 'package:today/models/task_data.dart';
class TaskScreen extends StatelessWidget {
//   @override
//   State<TaskScreen> createState() => _TaskScreenState();
// }
// class _TaskScreenState extends State<TaskScreen> {
  // Widget buildBottomSheet(BuildContext context)
  // List<Task> tasks=[
    // Task(name:'Buy milk'),
    // Task(name:'Buy eggs'),
    // Task(name:'Buy vegetables')
  // ];
  // void addTask(String newTaskTitle) {
  //   setState(() {
  //     tasks.add(Task(name: newTaskTitle));
  //   });
  //   Navigator.pop(context); // Close the modal bottom sheet after adding a task
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child:Icon(Icons.add),
          onPressed:(){
            showModalBottomSheet(
                context:context,
                builder: (context)=> AddTaskScreen(
                   // addTaskCallback: addTask,
                ) );}
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Container(
            padding: EdgeInsets.only(top:60.0,left:30.0,right: 30.0,bottom: 30.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              CircleAvatar(
                  child: Icon(
                    Icons.list,
                     size: 30.0,
                    color: Colors.lightBlueAccent,
                    ),
                   backgroundColor:Colors.white,
                   radius: 20.0,
              ),
                 SizedBox(
                   height: 30.0,
                 ),
                 Text('Todoey',
                    style: TextStyle(
                     color:Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
              )
                 ),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20.0,
                  )
              ),
          ]
          )
           ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(20.0),
                      topRight:Radius.circular(20.0),
                    )
                  ),
                      child:TaskList(),
                ),
              )
            ]
          )
    );
  }
}

