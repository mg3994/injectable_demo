import 'package:crusher/core/di/di_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductionConstants implements ConstantsTemplate {
  @override
  int getIncrement() => 1;
}