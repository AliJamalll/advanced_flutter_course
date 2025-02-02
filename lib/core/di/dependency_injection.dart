import 'package:dio/dio.dart';
import 'package:flutter_project_omar/core/networking/api_service.dart';
import 'package:flutter_project_omar/core/networking/dio_factory.dart';
import 'package:flutter_project_omar/features/login/data/repos/login_repo.dart';
import 'package:flutter_project_omar/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt()async{
//Dio and api service
Dio dio =  DioFactory.getDio();
getIt.registerLazySingleton<ApiService>(()=> ApiService(dio));

//login
getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));

//home

}