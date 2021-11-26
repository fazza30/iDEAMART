class Question {
  final int id, answer;
  final String question;
  final String icons;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.icons});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
    "options": ['Strongly Agreee', 'Agree', 'Neutral', 'Disagree', 'Strongly Disagree'],
    "icons": ['assets/icons/strongly-agree.svg',
              'assets/icons/agree.svg',
              'assets/icons/neutral.svg',
              'assets/icons/disagree.svg',
              'assets/icons/strongly-disagree.svg'],
    "answer_index": 1,
  }
];
