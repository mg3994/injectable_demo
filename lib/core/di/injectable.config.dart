// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../presentation/counter_change_notifier.dart' as _i4;
import '../constants/developement_contants.dart' as _i5;
import '../constants/production_constants.dart' as _i6;
import '../constants/testing_constants.dart' as _i7;
import 'di_repository.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final diAppEnvModule = _$DiAppEnvModule();
  gh.factory<_i3.ConstantsTemplate>(
    () => diAppEnvModule.devEnvConstants(),
    registerFor: {_dev},
  );
  gh.factory<_i3.ConstantsTemplate>(
    () => diAppEnvModule.prodEnvConstants(),
    registerFor: {_prod},
  );
  gh.factory<_i3.ConstantsTemplate>(
    () => diAppEnvModule.testEnvConstants(),
    registerFor: {_test},
  );
  gh.factory<_i4.CounterChangeNotifier>(
      () => _i4.CounterChangeNotifier(gh<_i3.ConstantsTemplate>()));
  gh.factory<_i5.DevelopementConstants>(() => _i5.DevelopementConstants());
  gh.factory<_i6.ProductionConstants>(() => _i6.ProductionConstants());
  gh.factory<_i7.TestingConstants>(() => _i7.TestingConstants());
  return getIt;
}

class _$DiAppEnvModule extends _i3.DiAppEnvModule {}
