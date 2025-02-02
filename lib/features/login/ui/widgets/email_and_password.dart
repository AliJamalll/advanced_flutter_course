import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_omar/core/helpers/app_regex.dart';
import 'package:flutter_project_omar/core/helpers/spacing.dart';
import 'package:flutter_project_omar/core/widgets/app_text_form_field.dart';
import 'package:flutter_project_omar/features/login/logic/login_cubit.dart';
import 'package:flutter_project_omar/features/login/ui/widgets/password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isSecures = true;
   bool hasLowerCase = false;
   bool hasUpperCase = false;
   bool hasSpecialChar = false;
   bool hasNumber = false;
   bool hasMinLength = false;

  // final formKey
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener((){
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialChar(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text,8);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              text: "Email",
              controller: context.read<LoginCubit>().emailController,
              type: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty|| !AppRegex.validateEmail(value)) {
                  return "Please enter a valid email";
                }
                return null;
              },
              //isSecure: false,
            ),
            verticalSpace(18),
            AppTextFormField(
              isSecure: true,
              text: "Password",
              controller: context.read<LoginCubit>().passwordController,
              type: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please write a valid password";
                }
                return null;
              },
            ),
            verticalSpace(24),
            PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialChar: hasSpecialChar,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ));
  }

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
  }
}
