import 'package:flutter/material.dart';

class TaskFile extends StatelessWidget {
 final bool isChecked;
 final String taskTitle;
 final void Function(bool?)? checkboxCallback;
 final VoidCallback longPressCallback;
 TaskFile({required this.isChecked,required this.taskTitle,required this.checkboxCallback,required this.longPressCallback});
 @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
      style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null
      ),
        ),
      trailing: Checkbox(
 activeColor:Colors.lightBlueAccent,
 value: isChecked,
 onChanged: checkboxCallback,
 ),
    );
  }
}

// (bool? checkboxState){
//
// }
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?)? toggleCheckbox;
//   TaskCheckbox(this.checkboxState,this.toggleCheckbox);
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

// class TaskCheckbox extends StatefulWidget {
//   @override
//   _TaskCheckboxState createState() => _TaskCheckboxState();
// }
// class _TaskCheckboxState extends State<TaskCheckbox> {
//   bool isChecked=false;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor:Colors.lightBlueAccent,
//         value: isChecked,
//         onChanged: (newValue){
//           setState(() {
//             isChecked=newValue?? false;
//           });
//         }
//     );
//   }
// }