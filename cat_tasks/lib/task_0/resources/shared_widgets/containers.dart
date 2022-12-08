import 'package:cat_tasks/task_0/resources/colors_manager.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/main_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

//first screen
Widget container1(
        {Color? color,
        String? url,
        String? content,
        double? width,
        double? height}) =>
    Padding(
      padding: EdgeInsets.only(left: 0.5.w),
      child: Container(
          width: width ?? 20.h, //It will take a 30% of screen height
          height: height ?? 20.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.h), color: color),
          child: Column(
            children: [
              Image.asset(
                url!,
                width: 15.w,
                height: 15.h,
              ),
              AppText(
                content!,
                color: ColorsManager.black,
                fontWeight: FontWeight.bold,
              )
            ],
          )),
    );

Widget container2({
  String? url,
  String? title,
  String? subTitle,
}) =>
    Container(
      width: 30.h, //It will take a 30% of screen height
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.h),
          color: ColorsManager.bodyColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: const Icon(
                  Icons.menu,
                  color: ColorsManager.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Image.asset(
              url!,
              width: 15.w,
              height: 9.h,
              color: ColorsManager.white,
              alignment: Alignment.topLeft,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: AppText(
              title!,
              color: ColorsManager.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: AppText(
              subTitle!,
              color: ColorsManager.subTitle,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: Stack(
              children: [
                Container(
                  width: 40.w,
                  height: 1.1.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  width: 30.w,
                  height: 1.1.h,
                  decoration: BoxDecoration(
                      color: ColorsManager.container1Color,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
          )
        ],
      ),
    );

//second screen

Widget container3(
        {Color? color, String? title, String? subTitle, Color? contentColor}) =>
    Container(
      width: 15.h,
      height: 10.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(2.h), color: color),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              title!,
              color: contentColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
            SizedBox(
              height: 1.h,
            ),
            AppText(
              subTitle!,
              color: contentColor,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
