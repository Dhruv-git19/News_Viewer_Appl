abstract class NewsEvent {}

class LoadNews extends NewsEvent {
  final String category;
  LoadNews({this.category = 'general'});
}

class RefreshNews extends NewsEvent {
  final String category;
  RefreshNews({this.category = 'general'});
}