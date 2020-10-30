import 'package:equatable/equatable.dart';
import 'question.dart';

abstract class QuestionState extends Equatable {}

class InitialState extends QuestionState {
  @override
  List<Object> get props => [];
}

class LoadingState extends QuestionState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends QuestionState {
  LoadedState(this.question);

  final QuestionModel question;

  @override
  List<QuestionModel> get props => [question];
}

class ErrorState extends QuestionState {
  @override
  List<Object> get props => [];
}

class NextPageState extends QuestionState{
@override
  List<Object> get props => [];
}

