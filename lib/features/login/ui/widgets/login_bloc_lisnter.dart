import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_omar/core/helpers/extensions.dart';
import 'package:flutter_project_omar/core/routing/routes.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/style.dart';
import 'package:flutter_project_omar/features/login/logic/login_cubit.dart';
import 'package:flutter_project_omar/features/login/logic/login_state.dart';

class LoginBlocLisnter extends StatelessWidget {
  const LoginBlocLisnter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous,current) => current is Loading || current is Success || current is Error,
      listener: (context,state){
        state.whenOrNull(
          loading: (){
            showDialog(
                context: context,
                builder: (context) => Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                )
            );
          },
          success: (loginResponse){
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error){
            context.pop();
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  icon: Icon(Icons.error,color: Colors.red,),
                  content: Text(error,style: TextStyles.font15darkBlueMedium,),
                  actions: [
                    TextButton(onPressed: (){
                      context.pop();
                    }, child:Text("Got it",
                    style: TextStyles.font14BlueSemiBold,
                    ))
                  ],
                )
            );
          }
        );
      },
        child: SizedBox.shrink()
    );
  }
}
