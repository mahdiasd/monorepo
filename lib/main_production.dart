import 'package:monorepo/app/app.dart';
import 'package:monorepo/bootstrap.dart';
import 'package:utils/utils.dart';

void main() {
  configureDependencies();
  bootstrap(() => const App());
}
