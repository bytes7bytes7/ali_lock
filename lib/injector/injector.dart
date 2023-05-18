import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: false,
)
Future<void> configureDependencies({required String env}) async {
  // ignore: await_only_futures
  await init(
    GetIt.instance,
    environment: env,
  );
}
