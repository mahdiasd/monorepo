import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

@InjectableInit()
void configureLoginDependencies() => getIt.init();