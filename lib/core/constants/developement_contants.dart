import 'package:injectable/injectable.dart';

import '../di/di_repository.dart';

@injectable
class DevelopementConstants implements ConstantsTemplate {
  @override
  int getIncrement() => 2;
}
