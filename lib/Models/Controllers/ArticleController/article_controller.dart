import 'package:flutter_app/Models/Controllers/ArticleController/article_repository.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleStateControllerProvider = StateNotifierProvider<
    ArticleStateController, AsyncValue<List<NewsArticle>>>(
  (ref) => ArticleStateController(ref.read(articleRepositoryProvider)),
);

class ArticleStateController
    extends StateNotifier<AsyncValue<List<NewsArticle>>> {
  ArticleStateController(this._newsRepository)
      : super(const AsyncValue.loading()) {
    getSearchArticle('tesla');
  }

  final ArticleRepository _newsRepository;

  Future<void> getSearchArticle(String searchKeyword) async {
    if (searchKeyword.isEmpty) {
      return;
    }

    state = const AsyncValue.loading();
    try {
      final repositoryList =
          await _newsRepository.searchRepositories(searchKeyword);
      state = AsyncValue.data(repositoryList);
      //print('NewsStateController => getSearchArticle =$repositoryList');
    } on Exception catch (error) {
      state = AsyncValue.error(error);
    }
  }
}

/*import 'package:flutter_app/Models/Controllers/ArticleController/article_repository.dart';
import 'package:flutter_app/Models/Controllers/ArticleController/article_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleStateControllerProvider =
    StateNotifierProvider.autoDispose<ArticleStateController, ArticleState>(
  (ref) => ArticleStateController(ref.read(articleRepositoryProvider)),
);

class ArticleStateController extends StateNotifier<ArticleState> {
  ArticleStateController(this._articleRepository)
      : super(const ArticleState()) {
    getSearchArticle('tesla');
  }

  final ArticleRepository _articleRepository;

  Future<void> getSearchArticle(String searchKeyword) async {
    try {
      final repositoryList =
          await _articleRepository.searchRepositories(searchKeyword);
      print('NewsStateController => getSearchArticle =$repositoryList');
      state = state.copyWith(
        articles: repositoryList,
        isLoading: true,
      );
    } on Exception catch (error) {
      print('Caught error: $error');
    }
  }
}*/
