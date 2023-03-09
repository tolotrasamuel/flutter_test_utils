import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:flutter_utils/log_trace.dart';
import 'package:meta/meta.dart';

@isTest
void test(
  Object description,
  dynamic Function() body, {
  String? testOn,
  flutter_test.Timeout? timeout,
  dynamic skip,
  dynamic tags,
  Map<String, dynamic>? onPlatform,
  int? retry,
}) {
  flutter_test.test(
    description,
    () {
      return mainTraced(body);
    },
    testOn: testOn,
    timeout: timeout,
    skip: skip,
    tags: tags,
    onPlatform: onPlatform,
    retry: retry,
  );
}
