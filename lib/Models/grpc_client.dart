import 'package:flutter_app/Models/Entities/Article/news_article.dart';
import 'package:flutter_app/src/generated/conredis_server_streaming.pbgrpc.dart';
import 'package:flutter_app/src/generated/conredis_server_streaming.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final grpcClientProvider = Provider.autoDispose(
  (_) => GrpcClient(),
);

class GrpcClient {
  factory GrpcClient() {
    return _instance ??= GrpcClient._internal();
  }
  // クラス生成時に instance を生成する class コンストラクタ
  GrpcClient._internal();
  // singleton にする為の instance キャッシュ
  static GrpcClient _instance;

  Future<void> connectionRedis(List<NewsArticle> newsData) async {
    if (newsData.length == 0) {
      return;
    }
    final channel = ClientChannel(
      '192.168.148.255',
      port: 5300,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = serviceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 50)));

    for (int i = 0; i < newsData.length; i++) {
      ResponseStream<Result> responses =
          stub.redisService(request(newsData[i]));
      try {
        await for (final res in responses) {
          print('Greeter client received: ${res.response}');
        }
      } catch (e) {
        print('Caught error: $e');
        //await channel.shutdown();
      }
      print('Complete!');
    }
    await channel.shutdown();
  }

  request(newsData) {
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
