import 'dart:convert';
import 'package:flutter_app/Models/Controllers/GrpcController/grpc_state.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/Models/api_client.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//　*Issue*　List<NewsArticle>をFreezedしてredisに保存

//providerを宣言
final newsStateProvider = Provider.autoDispose(
  (ref) => NewsState(ref.read(apiClientProvider), ref.read(grpcStateProvider)),
);

class NewsState {
  NewsState(this._apiClient, this._grpcState);

  final ApiClient _apiClient;
  final GrpcState _grpcState;

  Future<List<NewsArticle>> searchRepositories(String searchKeyword) async {
    print('Repository$searchKeyword');
    final responseBody = await _apiClient.get(
        'q=$searchKeyword&sortBy=publishedAt&apiKey=af371f769acd49cd8dd65710800416ff');

    final decodedJson = json.decode(responseBody) as Map<String, dynamic>;

    final repositoryList = <NewsArticle>[];
    if (decodedJson['status'] as String == 'error') {
      return repositoryList;
    }
    for (final itemJson in decodedJson['articles']) {
      repositoryList
          .add(NewsArticle.fromJson(itemJson as Map<String, dynamic>));
    }
    _grpcState.addRedisRepositories(repositoryList);

    return repositoryList;
  }
}
