import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/src/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:login/src/login_event.dart';

import 'login_state.dart';

final getIt = GetIt.instance;


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => getIt<LoginBloc>(), // Use injectable's getIt
      child: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.user != null) {
              // Login successful
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Welcome, ${state.user!.firstName}!')),
              );
              // Navigate or perform other actions here
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  state.isLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(LoginSubmitted());
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}