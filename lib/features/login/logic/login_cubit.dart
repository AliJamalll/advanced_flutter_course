import 'package:flutter/cupertino.dart';
import 'package:flutter_project_omar/features/login/data/models/login_request_body.dart';
import 'package:flutter_project_omar/features/login/data/repos/login_repo.dart';
import 'package:flutter_project_omar/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody)async{
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(success: (loginResponse){
      emit(LoginState.success(loginResponse));
    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
