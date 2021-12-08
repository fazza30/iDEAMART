class Question {
  final int id, answer;
  final String question;
  final List<String> icons;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options, this.icons});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
    "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
    "icons": ['assets/icons/strongly-agree.svg',
              'assets/icons/agree.svg',
              'assets/icons/disagree.svg',
              'assets/icons/strongly-disagree.svg'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
    "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
    "icons": ['assets/icons/strongly-agree.svg',
              'assets/icons/agree.svg',
              'assets/icons/disagree.svg',
              'assets/icons/strongly-disagree.svg'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
    "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
    "icons": ['assets/icons/strongly-agree.svg',
              'assets/icons/agree.svg',
              'assets/icons/disagree.svg',
              'assets/icons/strongly-disagree.svg'],
    "answer_index": 1,
  },
  
];
