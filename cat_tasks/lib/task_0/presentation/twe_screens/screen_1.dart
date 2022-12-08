import 'package:cat_tasks/task_0/presentation/twe_screens/screen_2.dart';
import 'package:cat_tasks/task_0/resources/assets_manager.dart';
import 'package:cat_tasks/task_0/resources/colors_manager.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/auth_widgets/auth_widgets.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/card.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/containers.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/main_text.dart';
import 'package:cat_tasks/task_0/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstTask_1 extends StatelessWidget {
  FirstTask_1({Key? key}) : super(key: key);
  List<Widget> achievementsBodyList = [
    Expanded(
      child: container1(
        color: ColorsManager.container1Color,
        content: StringsManager.container1Title,
        url: AssetsManager.bomb,
      ),
    ),
    Expanded(
      child: container1(
        color: ColorsManager.container2Color,
        content: StringsManager.container2Title,
        url: AssetsManager.snake,
      ),
    ),
    Expanded(
      child: container1(
        color: ColorsManager.container3Color,
        content: StringsManager.container3Title,
        url: AssetsManager.arm,
      ),
    ),
  ];

  List<Widget> investmentsbodyList = [
    container2(
      url: AssetsManager.appleLogo,
      title: StringsManager.appleTitle,
      subTitle: StringsManager.appleSubtitle,
    ),
    container2(
      url: AssetsManager.aLetter,
      title: StringsManager.activision,
      subTitle: StringsManager.activisionSubTitle,
    ),
    container2(
      url: AssetsManager.amd,
      title: StringsManager.amd,
      subTitle: StringsManager.amdSubtitle,
    ),
    container2(
      url: AssetsManager.vLetter,
      title: StringsManager.valve,
      subTitle: StringsManager.valveSubTitle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.mainColor,
        appBar: AppBar(
          leading: Icon(Icons.menu_rounded, size: 4.h),
          backgroundColor: ColorsManager.mainColor,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.only(left: 2.w, top: 1.5.h, right: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: AppText(
                        StringsManager.name,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    //balance
                    InkWell(
                      onTap: () => navigateTo(context, FirstTask_2()),
                      child: Screen_1_Card(
                          content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: const [
                              CircleAvatar(
                                backgroundColor: ColorsManager.white,
                                radius: 30,
                                child: CircleAvatar(
                                    radius: 28.0,
                                    backgroundImage:
                                        AssetImage(AssetsManager.profilePic1)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: ColorsManager.white,
                                  radius: 8,
                                  child: CircleAvatar(
                                      radius: 7.0,
                                      backgroundColor: ColorsManager.green),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              StringsManager.balance.toUpperCase(),
                              color: ColorsManager.container1Color,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            AppText(
                              StringsManager.balanceValue,
                              color: ColorsManager.white,
                              fontSize: 16.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: ColorsManager.white,
                          size: 3.h,
                        )
                      ])),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    //achievements
                    Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: Row(
                        children: [
                          AppText(
                            StringsManager.achievements,
                            color: ColorsManager.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 2.0.w),
                            child: const AppText(
                              StringsManager.seeAll,
                              color: ColorsManager.container1Color,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 20.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              achievementsBodyList[index],
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 2.w),
                          itemCount: achievementsBodyList.length),
                    ),

                    SizedBox(
                      height: 4.h,
                    ),
                    //investment

                    Row(
                      children: [
                        AppText(
                          StringsManager.investment,
                          color: ColorsManager.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 2.0.w),
                          child: const AppText(
                            StringsManager.seeAll,
                            color: ColorsManager.container1Color,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    GridView.count(
                      childAspectRatio: 1.w / 0.72.h,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children:
                          List.generate(investmentsbodyList.length, (index) {
                        return investmentsbodyList[index];
                      }),
                    )
                  ],
                ),
              )),
        ));
  }
}
