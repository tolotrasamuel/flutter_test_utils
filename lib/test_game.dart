import 'package:flame/game.dart';
import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_utils/log_trace.dart';
import 'package:meta/meta.dart';

@isTest
Future<void> myTestWithGame<T extends FlameGame>(
  String testName,
  CreateFunction<T> create,
  AsyncGameFunction<T> testBody,
) async {
  return test(testName, () async {
    final game = await initializeGame<T>(create);
    await mainTraced(() {
      return testBody(game);
    });
    game.onRemove();
  });
}
