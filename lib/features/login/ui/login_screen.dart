import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_omar/core/helpers/spacing.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/style.dart';
import 'package:flutter_project_omar/core/widgets/app_text_button.dart';
import 'package:flutter_project_omar/core/widgets/app_text_form_field.dart';
import 'package:flutter_project_omar/features/login/data/models/login_request_body.dart';
import 'package:flutter_project_omar/features/login/logic/login_cubit.dart';
import 'package:flutter_project_omar/features/login/logic/login_state.dart';
import 'package:flutter_project_omar/features/login/ui/login_screen.dart';
import 'package:flutter_project_omar/features/login/ui/widgets/already_have_an_account.dart';
import 'package:flutter_project_omar/features/login/ui/widgets/custom_terms_and_conditions.dart';
import 'package:flutter_project_omar/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_project_omar/features/login/ui/widgets/login_bloc_lisnter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyles.font24BlueBold
                  .copyWith(color: ColorsManager.mainBlue
              ),
            ),
            verticalSpace(8),
            Text("We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
              style: TextStyles.font14GrayRegular
                  .copyWith(color: ColorsManager.gray
              ),
            ),
            verticalSpace(36),
            Column(
              children: [
                const EmailAndPassword(),
                verticalSpace(24),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                    style: TextStyles.font13BlueRegular,
                    )
                ),
                verticalSpace(40),
                AppTextButton(
                  text: "Login",
                  onPressed: (){
                    validateThenLogin(context);
                  },
                ),
                verticalSpace(46),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(child: Divider(color: ColorsManager.lighterGray,thickness: 2,)),
                    Text("Or sign in with",
                    style: TextStyles.font14GrayRegular,
                    ),
                    Expanded(child: Divider(color: ColorsManager.lighterGray,thickness: 2,)),

                  ],
                ),
                verticalSpace(32),
                Row(
                  children: [
                    Expanded(child: Image.asset("assets/images/Login alternative.png",width: 50.w,height: 50.h,)),
                    horizontalSpace(10),
                    Expanded(child: Image.asset("assets/images/fac.png",width: 50.w,height: 50.h,)),
                    horizontalSpace(10),
                    Expanded(child: Image.asset("assets/images/ios.png",width: 50.w,height: 50.h,)),

                  ],
                ),
                verticalSpace(32),
                CustomTermsAndConditions(),
                verticalSpace(24),
                AlreadyHaveAnAccount(),
                LoginBlocLisnter(),
              ],
            )
          ],
        ),
      ),
    ),
        ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text
      ));
    }
  }
}

