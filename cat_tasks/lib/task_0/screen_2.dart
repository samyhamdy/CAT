import 'package:cat_tasks/task_0/first_task_resources/assets_manager.dart';
import 'package:cat_tasks/task_0/first_task_resources/colors_manager.dart';
import 'package:cat_tasks/task_0/first_task_resources/shared_widgets/cards.dart';
import 'package:cat_tasks/task_0/first_task_resources/shared_widgets/container.dart';
import 'package:cat_tasks/task_0/first_task_resources/shared_widgets/main_text.dart';
import 'package:cat_tasks/task_0/first_task_resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstTask_2 extends StatelessWidget {
  FirstTask_2({Key? key}) : super(key: key);
  List<Widget> postStatistics = [
    Expanded(
      child: container3(
          color: ColorsManager.container2Color,
          title: StringsManager.num32,
          subTitle: StringsManager.posts,
          contentColor: ColorsManager.black),
    ),
    Expanded(
      child: container3(
          color: ColorsManager.bodyColor,
          title: StringsManager.num26354,
          subTitle: StringsManager.followers,
          contentColor: ColorsManager.white),
    ),
    Expanded(
      child: container3(
          color: ColorsManager.bodyColor,
          title: StringsManager.num256,
          subTitle: StringsManager.subscriptions,
          contentColor: ColorsManager.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.mainColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(StringsManager.profileTitle),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 3.h,
              ),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: ColorsManager.mainColor,
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.all(4.4.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 8.h,
                          backgroundImage:
                              const AssetImage(AssetsManager.profilePic1)),
                      SizedBox(
                        height: 3.h,
                      ),
                      AppText(StringsManager.profileName1,
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 1.h,
                      ),
                      const AppText(StringsManager.profileEmail1,
                          color: ColorsManager.subTitle),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 15.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                postStatistics[index],
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 2.w),
                            itemCount: postStatistics.length),
                      ),
                      SizedBox(height: 3.h),
                      posts(
                          likes: StringsManager.reactions1LIKES,
                          comments: StringsManager.reactionsComments,
                          content: StringsManager.post1,
                          name: StringsManager.profileName1,
                          time: StringsManager.fiveMinutes,
                          url: AssetsManager.profilePic1),
                      SizedBox(
                        height: 2.h,
                      ),
                      posts(
                          likes: StringsManager.reactions2LIKES,
                          comments: StringsManager.reactionsComments,
                          content: StringsManager.post2,
                          name: StringsManager.profileName2,
                          time: StringsManager.twelveMinutes,
                          url: AssetsManager.profilePic2),
                      SizedBox(
                        height: 2.h,
                      ),
                    ]))));
  }

  Widget posts(
          {String? url,
          String? name,
          String? time,
          String? content,
          String? likes,
          String? comments}) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: ColorsManager.bodyColor,
        elevation: 7,
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 4.h, backgroundImage: AssetImage(url!)),
                  SizedBox(width: 4.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(name!,
                          color: ColorsManager.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      AppText(time!,
                          color: ColorsManager.subTitle, fontSize: 10.sp),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              AppText(content!),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.favorite,
                    color: ColorsManager.container1Color,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  AppText(
                    likes!,
                    color: ColorsManager.container1Color,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(
                    Icons.comment,
                    color: ColorsManager.white,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  AppText(
                    comments!,
                    color: ColorsManager.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(
                    Icons.share,
                    color: ColorsManager.white,
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
