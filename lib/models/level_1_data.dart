class Question{
  final int id, answer;
  final String quiction;
  final List<String> options;
  Question({required this.id , required this.quiction, required this.answer, required this.options});
}

List<Question> sample_data =[
Question(id: 1, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
Question(id: 2, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
Question(id: 3, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
Question(id: 4, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
Question(id: 5, quiction: '1+2', answer: 2, options: ['1','3','8','9']),


];
