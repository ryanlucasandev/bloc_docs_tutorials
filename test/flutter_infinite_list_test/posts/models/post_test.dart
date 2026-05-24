import 'package:bloc_docs_tutorials/flutter_infinite_list/posts/models/post.dart';
import 'package:test/test.dart';

void main() {
  group('Post', () {
    test('supports value comparison', () {
      expect(
        Post(id: 1, title: 'post title', body: 'post body'),
        Post(id: 1, title: 'post title', body: 'post body'),
      );
    });
  });
}
