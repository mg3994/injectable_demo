// import 'package:crusher/core/di/injectable.dart';
// import 'package:crusher/core/repo/dev_counter_repository.dart';
// import 'package:injectable/injectable.dart';

// import '../repo/counter_repository.dart';
// import '../repo/mock_counter_repository.dart';

// // @injectable
// // @module
// // @Injectable(
// //   as: DevCounterRepository,
// // ) // env: [Env.dev])
// // @Injectable(
// //   as: CounterRepository,
// // ) // env: [Env.prod])
// // @Injectable(
// //   as: MockCounterRepository,
// // ) // env: [Env.test])
// @module
// abstract class ICounterRepository {
//   // @factoryMethod
//   // @Injectable(as: DevCounterRepository, env: [Env.dev])
//   // @Injectable(as: CounterRepository, env: [Env.prod])
//   // @Injectable(as: MockCounterRepository, env: [Env.test])

// //   int getIncrement();
// // }
//   int getIncrement();
//   @Named(Env.dev)
//   @injectable
//   ICounterRepository get devCounterRepository => DevCounterRepository();

//   @Named(Env.prod)
//   @injectable
//   ICounterRepository get counterRepository => CounterRepository();

//   @Named(Env.test)
//   @injectable
//   ICounterRepository get mockCounterRepository => MockCounterRepository();
// }
// // @injectable
// // // @factoryMethod
// // @Environment(Env.dev) // Replace with appropriate environment constants
// // ICounterRepository devCounterRepository() => DevCounterRepository();

// // @injectable
// // // @factoryMethod
// // @Environment(Env.prod) // Replace with appropriate environment constants
// // ICounterRepository counterRepository() => CounterRepository();

// // @injectable
// // // @factoryMethod
// // @Environment(Env.test) // Replace with appropriate environment constants
// // ICounterRepository mockCounterRepository() => MockCounterRepository();

import 'package:crusher/core/constants/production_constants.dart';
import 'package:crusher/core/constants/developement_contants.dart';
import 'package:injectable/injectable.dart';

import '../constants/testing_constants.dart';

abstract class ConstantsTemplate {
  int getIncrement();
}

// @module
// abstract class DiModule {
//   @injectable
//   CounterChangeNotifier counterChangeNotifier(ICounterRepository repository) =>
//       CounterChangeNotifier(repository);

//   // @injectable
//   // CounterRepository counterRepository() => CounterRepository();

//   // @injectable
//   // DevCounterRepository devCounterRepository() => DevCounterRepository();

//   // You can also add conditional registrations based on the environment
//   @Named(Env.dev)
//   @injectable
//   ICounterRepository devCounterRepository() => DevCounterRepository();

//   @Named(Env.prod)
//   @injectable
//   ICounterRepository counterRepository() => CounterRepository();
// }

@module
abstract class DiAppEnvModule {
  @dev
  @injectable
  ConstantsTemplate devEnvConstants() => DevelopementConstants();

  @prod
  @injectable
  ConstantsTemplate prodEnvConstants() => ProductionConstants();
  @test
  @injectable
  ConstantsTemplate testEnvConstants() => TestingConstants();
}
