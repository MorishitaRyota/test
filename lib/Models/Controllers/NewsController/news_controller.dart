import 'package:flutter_app/Models/Controllers/NewsController/news_state.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsStateControllerProvider =
    StateNotifierProvider<NewsStateController, AsyncValue<List<NewsArticle>>>(
  (ref) => NewsStateController(ref.read(newsStateProvider)),
);

class NewsStateController extends StateNotifier<AsyncValue<List<NewsArticle>>> {
  NewsStateController(this._newsRepository)
      : super(const AsyncValue.loading()) {
    getSearchArticle('tesla');
  }

  final NewsState _newsRepository;

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
