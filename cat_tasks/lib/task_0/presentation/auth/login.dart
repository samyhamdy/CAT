import 'package:cat_tasks/task_0/data/cache/cache_helper.dart';
import 'package:cat_tasks/task_0/presentation/auth/register.dart';
import 'package:cat_tasks/task_0/presentation/twe_screens/screen_1.dart';
import 'package:cat_tasks/task_0/resources/assets_manager.dart';
import 'package:cat_tasks/task_0/resources/colors_manager.dart';
import 'package:cat_tasks/task_0/resources/shared_widgets/auth_widgets/auth_widgets.dart';
import 'package:cat_tasks/task_0/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var email;

  var password;

  bool ishidden = true;

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
                    StringsManager.login1,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    StringsManager.login5,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
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
                  Center(
                    child: defaultButton(
                      width: double.infinity,
                      buttonColor: ColorsManager.logincolor,
                      fontSize: 20.sp,
                      buttonFunction: () {
                        if (formkey.currentState!.validate()) {
                          if (CacheHelper.GetData(key: StringsManager.email) ==
                                  email &&
                              CacheHelper.GetData(key: StringsManager.pass) ==
                                  password) {
                            defaultShowToast(
                                message: StringsManager.success,
                                states: ToastStates.SUCCESS);
                            NavigateandFinish(context, FirstTask_1());
                          } else {
                            defaultShowToast(
                                message: StringsManager.failure,
                                states: ToastStates.ERORR);
                          }
                        }
                      },
                      text: StringsManager.login2,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringsManager.login3,
                        style: TextStyle(
                            color: ColorsManager.subTitle,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            navigateTo(context, RegisterScreen());
                          },
                          child: Text(
                            StringsManager.login4,
                            style: TextStyle(
                                color: ColorsManager.logincolor,
                                fontSize: 15.sp),
                          ))
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
