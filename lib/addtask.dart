import 'package:flutter/material.dart';

class taskadd extends StatelessWidget {
  final String taskname;
  final bool check;
  Function(bool?)? onChanged;

  taskadd(
      {super.key,
      required this.check,
      required this.taskname,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
      child: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Checkbox(
              value: check,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              taskname,
              style: TextStyle(
                  fontSize: 22,
                  decoration:
                      check ? TextDecoration.lineThrough : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
