import 'package:cat_tasks/task_0/data/cache/cache_helper.dart';
import 'package:cat_tasks/task_0/presentation/auth/login.dart';
import 'package:cat_tasks/task_0/presentation/twe_screens/screen_1.dart';
import 'package:cat_tasks/task_0/resources/assets_manager.dart';
import 'package:cat_tasks/task_0/resources/colors_manager.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/auth_widgets/auth_widgets.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/main_text.dart';
import 'package:cat_tasks/task_0/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var email;
  var password;
  var name;
  bool ishidden = true;
  var phone;
  var formkey = GlobalKey<FormState>();
  IconData suffix = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: Form(
        key: formkey,
        child: Padding(
          padding: EdgeInsets.all(5.h),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(AssetsManager.login)),
                  ),
                  Text(
                    StringsManager.signUp1,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    StringsManager.signUp2,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  appTextFormField(
                    type: TextInputType.name,
                    prefixIcon: Icons.person,
                    textEditingController: nameController,
                    defaultfontsize: 15.sp,
                    label: StringsManager.userName,
                    onchanged: (value) {
                      name = value;
                    },
                    onsubmitted: (value) {},
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  appTextFormField(
                    type: TextInputType.phone,
                    prefixIcon: Icons.phone,
                    textEditingController: phoneController,
                    defaultfontsize: 15.sp,
                    label: StringsManager.phone,
                    onchanged: (value) {
                      password = value;
                    },
                    onsubmitted: (value) {},
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  appTextFormField(
                    type: TextInputType.emailAddress,
                    textEditingController: emailController,
                    prefixIcon: Icons.email_outlined,
                    defaultfontsize: 15.sp,
                    label: StringsManager.emailAddress,
                    onchanged: (value) {
                      email = value;
                    },
                    onsubmitted: (value) {},
                  ),
                  SizedBox(height: 5.h),
                  appTextFormField(
                    suffixIcon: suffix,
                    obsecuretext: ishidden,
                    suffixfunction: () {
                      setState(() {
                        ishidden = !ishidden;
                        suffix = suffix == Icons.visibility
                            ? Icons.visibility_off
                            : Icons.visibility;
                      });
                    },
                    type: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock_outline,
                    textEditingController: passwordController,
                    // SuffixIcon: cubit.suffixIcon,
                    defaultfontsize: 15.sp,
                    label: StringsManager.password,
                    onchanged: (value) {
                      password = value;
                    },
                    onsubmitted: (value) {},
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppText(
                    StringsManager.signUp3,
                    color: ColorsManager.subTitle,
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: defaultButton(
                      width: double.infinity,
                      buttonColor: ColorsManager.logincolor,
                      fontSize: 20.sp,
                      buttonFunction: () {
                        if (formkey.currentState!.validate()) {
                          if (email !=
                              CacheHelper.GetData(key: StringsManager.email)) {
                            CacheHelper.SaveData(
                                key: StringsManager.email, value: email);
                            CacheHelper.SaveData(
                                key: StringsManager.pass, value: password);
                            NavigateandFinish(context, LoginScreen());
                          } else {
                            defaultShowToast(
                                message: StringsManager.alreayexist,
                                states: ToastStates.ERORR);
                          }
                        }
                      },
                      text: StringsManager.signUp1,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringsManager.signUp5,
                        style: TextStyle(
                            color: ColorsManager.subTitle,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          navigateTo(context, LoginScreen());
                        },
                        child: Text(
                          StringsManager.login1,
                          style: TextStyle(
                              color: ColorsManager.logincolor, fontSize: 15.sp),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
