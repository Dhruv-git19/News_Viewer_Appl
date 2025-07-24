
import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable {}

class LoadNews extends NewsEvent {
  final String category;
  LoadNews({this.category = 'general'});

  @override
  List<Object?> get props => [category];
}

class RefreshNews extends NewsEvent {
  final String category;
  RefreshNews({this.category = 'general'});

  @override
  List<Object?> get props => [category];
}
