import 'package:flutter_test/flutter_test.dart';
import 'package:webkit/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('WebkitBaseViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}