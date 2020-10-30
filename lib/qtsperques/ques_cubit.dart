import 'package:cubit/cubit.dart';
import 'ques_repository.dart';
import 'ques_state.dart';
import 'question.dart';

class QuestionCubit extends Cubit<QuestionState> {
  int i = 0;
  Future<List<QuestionModel>> question;
  QuestionCubit() : super(InitialState()) {
    // _getQuestion();
    repository = QuestionRepository();
    question = repository.getQuestion();
  }

  QuestionRepository repository;

  // void _getQuestion() async {
  //   try {
  //     emit(LoadingState());
  //     question = await repository.getQuestion();
  //     emit(LoadedState(question[i]));
  //   } catch (e) {
  //     emit(ErrorState());
  //   }
  // }

  void nextQuestion() async {
    var x = await question;
    if (++i < x.length) {
      emit(LoadedState(x[i]));
    } else {
      emit(NextPageState());
    }
  }
}
