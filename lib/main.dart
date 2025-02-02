import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/di/dependency_injection.dart';
import 'package:flutter_project_omar/core/routing/app_router.dart';
import 'package:flutter_project_omar/doc_app.dart';

void main() {
  setUpGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}




