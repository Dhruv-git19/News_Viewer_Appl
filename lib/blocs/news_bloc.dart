import 'package:flutter_bloc/flutter_bloc.dart';
import 'news_event.dart';
import 'news_state.dart';
import '../services/news_api_service.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsApiService newsService;

  NewsBloc(this.newsService) : super(NewsInitial()) {
    on<LoadNews>((event, emit) async {
      emit(NewsLoading());
      try {
        final articles = await newsService.getTopHeadlines(category: event.category);
        emit(NewsLoaded(articles));
      } catch (e) {
        emit(NewsError('Failed to fetch news. Please try again.'));
      }
    });

    on<RefreshNews>((event, emit) async {
      try {
        final articles = await newsService.getTopHeadlines(category: event.category);
        emit(NewsLoaded(articles));
      } catch (e) {
        emit(NewsError('Failed to refresh news.'));
      }
    });
  }
}