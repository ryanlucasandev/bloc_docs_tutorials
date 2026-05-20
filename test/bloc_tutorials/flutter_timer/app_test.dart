import 'package:bloc_docs_tutorials/bloc_tutorials/flutter_timer/app.dart';
import 'package:bloc_docs_tutorials/bloc_tutorials/flutter_timer/timer/timer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders TimerPage', (tester) async {
      await tester.pumpWidget(const FlutterTimer());
      expect(find.byType(TimerPage), findsOneWidget);
    });
  });
}
