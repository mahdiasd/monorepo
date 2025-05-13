import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/src/login_bloc.dart';
import 'package:login/src/login_event.dart';
import 'package:utils/utils.dart';

import 'login_state.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => getIt<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Text("data"),
      ),
    );
  }
}