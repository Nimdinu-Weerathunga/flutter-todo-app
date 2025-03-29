import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoItem extends StatelessWidget {
final Todo todo;
  const TodoItem({super.key,required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          todo.isDone
          ? Icons.check_box_outlined
          : Icons.check_box_outline_blank,
          color: Colors.white,
        ),
        title: Text(
          todo.title,
          style:TextStyle(color: Colors.white),

        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon
          Icons.delete,
          color: Colors.red,
          ),
      ),
    );
  }
}