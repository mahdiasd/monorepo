import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:utils/src/di/injection.config.dart';


final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();