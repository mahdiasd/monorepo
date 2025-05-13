import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/src/login_bloc.dart';
import 'package:login/src/login_event.dart';
import 'package:ui/l10n/l10n.dart';
import 'package:utils/utils.dart';

import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: const LoginContent(),
    );
  }
}


class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
