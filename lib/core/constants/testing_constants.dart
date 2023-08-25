import 'package:crusher/core/di/di_repository.dart';
import 'package:injectable/injectable.dart';
// import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@injectable
class TestingConstants extends Mock implements ConstantsTemplate {
  @override
  int getIncrement() {
    return 5;
  }
}
