import 'package:bloc_docs_tutorials/flutter_infinite_list/app.dart';
import 'package:bloc_docs_tutorials/flutter_infinite_list/posts/view/posts_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InfiniteListApp', () {
    testWidgets('renders PostsPage', (tester) async {
      await tester.pumpWidget(InfiniteListApp());
      await tester.pumpAndSettle();
      expect(find.byType(PostsPage), findsOneWidget);
    });
  });
}
