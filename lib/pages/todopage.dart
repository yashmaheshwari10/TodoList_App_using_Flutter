import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assignment/addtask.dart';
import 'package:todo_assignment/theme/themeprovider.dart';
import 'package:todo_assignment/themes/darktheme.dart';

class tododpage extends StatefulWidget {
  const tododpage({super.key});

  @override
  State<tododpage> createState() => _tododpageState();
}

class _tododpageState extends State<tododpage> {
  List todolist = [];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      print(index);
      todolist[index][1] = !todolist[index][1];
    });
  }

  final _controller = TextEditingController();

  void newtk() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 180,
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Task Name'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todolist.add([_controller.text, false]);
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text('Save')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('TODO list'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return taskadd(
            taskname: todolist[index][0],
            check: todolist[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
      bottomNavigationBar: InkWell(
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false).toggletheme();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.secondary,
            child: Center(
                child: Text(
              'Change Theme',
              style: TextStyle(fontSize: 18),
            )),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: newtk,
        child: Icon(Icons.add),
      ),
    );
  }
}
