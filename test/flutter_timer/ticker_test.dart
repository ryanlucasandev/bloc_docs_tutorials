import 'package:bloc_docs_tutorials/flutter_timer/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Ticker', () {
    const ticker = Ticker();
    test('ticker emits 3 ticks from 2-0 every second', () {
      expectLater(ticker.tick(ticks: 3), emitsInOrder(<int>[2, 1, 0]));
    });
  });
}
