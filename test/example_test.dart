import 'package:crusher/core/constants/fixed_env_enum.dart';
import 'package:crusher/core/di/di_repository.dart';
import 'package:crusher/core/di/injectable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

//This Test is not in Working , So Please Write Your Own Logic
void main() {
  setUpAll(() {
    // Just like in the regular main() function inside main.dart
    configureAppEnv(appEnvironment: Env.test);
  });

  test(
    "should do something",
    () async {
      // arrange
      final mockCounterRepository = getIt<ConstantsTemplate>();
      when(mockCounterRepository.getIncrement()).thenReturn(123);
      // act
      // TODO: Some action here
      // Act

      // assert
      verify(mockCounterRepository.getIncrement()).called(10);
      // Assert
    },
  );
}
