import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // database
  Future<List<ArticleEntity>> getSavedArticles();
  Future<void> saveArticle(ArticleEntity articleEntity);
  Future<void> removeArticle(ArticleEntity articleEntity);
}
