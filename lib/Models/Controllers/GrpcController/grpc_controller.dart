/*import 'package:flutter_app/Models/Controllers/NewsController/news_state.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/Models/Controllers/GrpcController/grpc_state.dart';
import 'package:flutter_app/src/generated/conredis.pbjson.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final grpcStateControllerProvider = Provider.autoDispose<GrpcStateController>(
  (ref) => GrpcStateController(
      ref.read(grpcStateProvider), ref.read(newsStateProvider)),
);

class GrpcStateController {
  GrpcStateController(this._grpcRepository, this._newsRepository) {
    addRedisArticle();
  }

  final GrpcState _grpcRepository;
  final NewsState _newsRepository;

  Future<void> addRedisArticle() async {
    try {
      final response = await _grpcRepository.addRedisRepositories();
      state = AsyncValue.data(response);
      print('NewsStateController => getSearchArticle =$response');
    } on Exception catch (error) {
      state = AsyncValue.error(error);
    }
  }
}*/
