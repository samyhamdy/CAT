import 'package:cat_tasks/task_0/resources/colors_manager.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/main_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

Widget appTextFormField({
  String? label,
  String? hint,
  IconData? prefixIcon,
  IconData? suffixIcon,
  Function(String)? onchanged,
  Function(String)? onsubmitted,
  void Function()? suffixfunction,
  bool obsecuretext = false,
  bool isReadonly = false,
  double defaultfontsize = 20,
  required TextEditingController textEditingController,
  TextInputType? type,
}) =>
    TextFormField(
      keyboardType: type ?? TextInputType.text,
      style: TextStyle(
        fontSize: defaultfontsize,
      ),
      readOnly: isReadonly,
      controller: textEditingController,
      onFieldSubmitted: onsubmitted,
      obscureText: obsecuretext,
      validator: (value) {
        if (value!.isEmpty) {
          return " This field is required ";
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hint ?? "",
        labelText: label,
        labelStyle: const TextStyle(color: ColorsManager.subTitle),
        suffixIcon: IconButton(
            icon: Icon(suffixIcon, color: Colors.grey),
            onPressed: suffixfunction),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey,
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.logincolor)),
      ),
    );

Widget defaultButton({
  String? text,
  VoidCallback? buttonFunction,
  double? fontSize,
  Color? buttonColor,
  double? width,
}) =>
    GestureDetector(
      onTap: buttonFunction,
      child: Container(
        width: width,
        height: 7.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.h), color: buttonColor),
        child: Center(
          child: AppText(
            text!,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

Future<dynamic> navigateTo(context, Widget screen) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return screen;
  }));
}

void defaultShowToast({
  required String message,
  required ToastStates states,
}) =>
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(states),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates {
  SUCCESS,
  ERORR,
  WARNING,
}

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERORR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

void NavigateandFinish(context, Widget widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false, //remove all screen
      //if true --- keep all screens before it
    );
