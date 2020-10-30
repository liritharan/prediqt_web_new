class QuestionModel {
  String question;
  String type;
  int profilerId;
  List<Answer> answers;

  QuestionModel({this.question, this.type, this.profilerId, this.answers});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    this.question = json['question'];
    this.type = json['type'];
    this.profilerId = json['profiler_id'];
    this.answers = (json['answers'] as List) != null
        ? (json['answers'] as List).map((i) => Answer.fromJson(i)).toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['type'] = this.type;
    data['profiler_id'] = this.profilerId;
    data['answers'] = this.answers != null
        ? this.answers.map((i) => i.toJson()).toList()
        : null;
    return data;
  }

  @override
  String toString() {
    return 'Question{question: $question, type: $type, profilerId: $profilerId, answers: $answers}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionModel &&
          runtimeType == other.runtimeType &&
          question == other.question &&
          type == other.type &&
          profilerId == other.profilerId &&
          answers == other.answers;

  @override
  int get hashCode =>
      question.hashCode ^
      type.hashCode ^
      profilerId.hashCode ^
      answers.hashCode;
}

class Answer {
  String answer;
  String country;
  int answerId;

  Answer({this.answer, this.country, this.answerId});

  Answer.fromJson(Map<String, dynamic> json) {
    this.answer = json['answer'];
    this.country = json['country'];
    this.answerId = json['answer_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['answer'] = this.answer;
    data['country'] = this.country;
    data['answer_id'] = this.answerId;
    return data;
  }

  @override
  String toString() {
    return 'AnswersListBean{answer: $answer, country: $country, answerId: $answerId}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Answer &&
          runtimeType == other.runtimeType &&
          answer == other.answer &&
          country == other.country &&
          answerId == other.answerId;

  @override
  int get hashCode => answer.hashCode ^ country.hashCode ^ answerId.hashCode;
}
