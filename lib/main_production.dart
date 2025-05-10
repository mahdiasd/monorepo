import 'package:monorepo/app/app.dart';
import 'package:monorepo/bootstrap.dart';

void main() {
  configureDependencies();
  bootstrap(() => const App());
}
