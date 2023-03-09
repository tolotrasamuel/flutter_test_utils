import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_utils/log_trace.dart';
import 'package:meta/meta.dart';

@isTest
void test(
  Object description,
  dynamic Function() body, {
  String? testOn,
  Timeout? timeout,
  dynamic skip,
  dynamic tags,
  Map<String, dynamic>? onPlatform,
  int? retry,
}) {
  test(
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
