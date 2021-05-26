import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/Models/grpc_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//　*Issue*　grpcからのresponseをFreezedしてstateとして管理

//providerを宣言
final grpcStateProvider = Provider.autoDispose(
  (ref) => GrpcState(ref.read(grpcClientProvider)),
);

class GrpcState {
  GrpcState(this._grpcClient);

  final GrpcClient _grpcClient;

  Future<void> addRedisRepositories(List<NewsArticle> newsData) async {
    _grpcClient.connectionRedis(newsData);
  }
}
