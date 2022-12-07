import 'package:cat_tasks/task_0/first_task_resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Screen_1_Card extends StatelessWidget {
  Screen_1_Card({
    Key? key,
    this.content,
  }) : super(key: key);
  Widget? content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: ColorsManager.bodyColor,
      elevation: 7,
      child: content!,
    ));
  }
}
