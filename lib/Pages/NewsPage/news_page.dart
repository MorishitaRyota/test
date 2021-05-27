import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Controllers/ArticleController/article_controller.dart';
import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/Pages/NewsPage/web_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'new_list_tile.dart';

//HookWidgetはstatelessWidgetで、useProvider,useContextなどが使用できるようにする為に使用
class NewsPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News List'),
      ),
      body: _textFieldView(),
    );
  }

  Widget _textFieldView() {
    final context = useContext();
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.only(top: 20, right: 20, bottom: 20, left: 20),
          padding:
              const EdgeInsets.only(top: 2, right: 13, bottom: 2, left: 13),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            // controller: searchTextFieldController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              hintText: '検索キーワードを入力してください',
            ),
            autofocus: true,
            onSubmitted: (searchKeyword) => _submission(searchKeyword, context),
          ),
        ),
        Expanded(
          child: _buildList(),
        ),
      ],
    );
  }

  void _submission(String searchKeyword, BuildContext context) {
    print(searchKeyword);
    //ArticleStateControllerクラスのgetSearchArticleを呼び出し
    context
        .read(articleStateControllerProvider.notifier)
        .getSearchArticle(searchKeyword);
  }

  Widget _buildList() {
    //statenotifierで検知しているarticleStateのLoadingの状態を監視
    /*final isLoading =
        useProvider(articleStateControllerProvider.select((v) => v.isLoading));
    print(isLoading);
    //statenotifierで検知しているarticleStateのarticlesの状態を監視
    final newsListState =
        useProvider(articleStateControllerProvider.select((v) => v.articles));
    */
    final newsListState = useProvider(articleStateControllerProvider);

    print('NewsPage => BuildList = $newsListState');

    //print(repositoryListState.state);

    return /*isLoading
        ? ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: newsListState.length,
            itemBuilder: (BuildContext context, int index) {
              print(newsListState[index]);
              return newsListTile(newsListState[index], context);
            },
          )
        : const Center(
            child: CircularProgressIndicator(),
          );*/
        newsListState.when(
      data: (newsList) => newsList.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                print(newsList[index]);
                return newsListTile(newsList[index], context);
              },
            )
          : _emptyListView(),
      loading: _loadingView,
      error: (error, _) => _errorView(error.toString()),
    );
  }

  Widget _loadingView() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _errorView(String errorMessage) {
    /*Fluttertoast.showToast(
      msg: errorMessage,
      backgroundColor: Colors.grey,
    );*/
    return Container();
  }

  Widget _emptyListView() {
    return const Center(
      child: Text(
        'Repositoryが見つかりませんでした',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
      ),
    );
  }
}
