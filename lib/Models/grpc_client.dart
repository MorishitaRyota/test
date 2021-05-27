import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/src/generated/conredis_server_streaming.pbgrpc.dart';
import 'package:flutter_app/src/generated/conredis_server_streaming.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//providerの宣言。不要になったらDispose
final grpcClientProvider = Provider.autoDispose(
  (_) => GrpcClient(),
);

class GrpcClient {
  factory GrpcClient() {
    return _instance ??= GrpcClient._internal();
  }
  // クラス生成時に instance を生成する class コンストラクタS
  GrpcClient._internal();
  // singleton にする為の instance キャッシュ
  static GrpcClient _instance;

  Future<void /*List<Result>*/ > connectionRedis(
      List<NewsArticle> newsData) async {
    final channel = ClientChannel(
      '172.16.0.128',
      port: 5300,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = serviceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 10)));

    //var responseList = <Result>[];

    for (int i = 0; i < newsData.length; i++) {
      var responses = stub.redisService(request(newsData[i]));
      try {
        await for (final res in responses) {
          print('Greeter client received: ${res.response}');
        }
      } catch (e) {
        print('Caught error: $e');
        //await channel.shutdown();
        return;
      }
      print('Complete!');
    }
    await channel.shutdown();
    //return responseList;
  }

  News request(NewsArticle newsData) {
    final request = News();
    final source = Source()
      ..id = newsData.source.id ?? 'nodata'
      ..name = newsData.source.name ?? 'nodata';
    request.article = Articles()
      ..sources = source ?? 'nodata'
      ..author = newsData.author ?? 'nodata'
      ..title = newsData.title ?? 'nodata'
      ..description = newsData.description ?? 'nodata'
      ..url = newsData.url ?? 'nodata'
      ..urlToImage = newsData.urlToImage ?? 'nodata'
      ..publishedAt = newsData.publishedAt ?? 'nodata'
      ..content = newsData.content ?? 'nodata';

    return request;
  }
}
