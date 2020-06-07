import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in.dart';
import 'package:flutter_ddd/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}
