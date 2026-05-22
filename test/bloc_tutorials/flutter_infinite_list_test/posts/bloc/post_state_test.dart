import 'package:bloc_docs_tutorials/bloc_tutorials/flutter_infinite_list/posts/bloc/post_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('PostState', () {
    test('supports value comparison', () {
      expect(PostState(), PostState());
      expect(PostState().toString(), PostState().toString());
    });
  });
}
