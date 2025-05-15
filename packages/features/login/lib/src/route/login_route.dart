import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/src/login_page.dart';

part 'login_route.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
@immutable
class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}
