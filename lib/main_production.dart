import 'package:rose_physio/app/app.dart';
import 'package:rose_physio/bootstrap.dart';
import 'package:utils/utils.dart';

void main() {
  configureDependencies();
  bootstrap(() => const App());
}
