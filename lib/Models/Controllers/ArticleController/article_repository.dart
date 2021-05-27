import 'dart:convert';

import 'package:flutter_app/Models/Controllers/GrpcController/grpc_repository.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/Models/api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleRepositoryProvider = Provider.autoDispose(
  (ref) => ArticleRepository(
      ref.read(apiClientProvider), ref.read(grpcStateProvider)),
);

class ArticleRepository {
  ArticleRepository(this._apiClient, this._grpcRepository);

  final ApiClient _apiClient;
  final GrpcRepository _grpcRepository;

  Future<List<NewsArticle>> searchRepositories(String searchKeyword) async {
    print('Repository$searchKeyword');
    final responseBody = await _apiClient.get(
        'q=$searchKeyword&sortBy=publishedAt&apiKey=af371f769acd49cd8dd65710800416ff');

    final decodedJson = json.decode(responseBody) as Map<String, dynamic>;
    print('==========$decodedJson==========');
    final repositoryList = <NewsArticle>[];
    if (decodedJson['status'] as String == 'error') {
      return repositoryList;
    }
    for (final itemJson in decodedJson['articles']) {
      repositoryList
          .add(NewsArticle.fromJson(itemJson as Map<String, dynamic>));
    }
    _grpcRepository.addRedisRepositories(repositoryList);

    return repositoryList;
  }
}
