import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          onTap: () {
            print('tapped');
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
          leading: Icon(
              todo.isDone! ? Icons.check_box : Icons.check_box_outline_blank,
              color: tdBlue),
          title: Text(todo.todoText!,
              style: TextStyle(
                  fontSize: 16,
                  color: tdBlack,
                  decoration: todo.isDone!
                      ? TextDecoration.lineThrough
                      : TextDecoration.none)),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
                onPressed: () {
                  print('delete');
                },
                icon: const Icon(Icons.delete),
                color: Colors.white,
                iconSize: 18),
          ),
        ));
  }
}
