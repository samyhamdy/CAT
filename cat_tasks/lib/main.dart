import 'package:cat_tasks/task_0/screen_1.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const CatTasks());
}

class CatTasks extends StatelessWidget {
  const CatTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FirstTask_1(),
        );
      },
    );
  }
}
