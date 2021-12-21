// class Question {
//   final int id, answer;
//   final String question;
//   final List<String> icons;
//   final List<String> options;

//   Question({this.id, this.question, this.answer, this.options, this.icons});
// }

// const List sample_data = [
//   {
//     "id": 1,
//     "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
//     "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
//     "icons": ['assets/icons/strongly-agree.svg',
//               'assets/icons/agree.svg',
//               'assets/icons/disagree.svg',
//               'assets/icons/strongly-disagree.svg'],
//     "answer_index": 1,
//   },
//   {
//     "id": 2,
//     "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
//     "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
//     "icons": ['assets/icons/strongly-agree.svg',
//               'assets/icons/agree.svg',
//               'assets/icons/disagree.svg',
//               'assets/icons/strongly-disagree.svg'],
//     "answer_index": 1,
//   },
//   {
//     "id": 3,
//     "question": "Tujuan dari Pusat Karier telah dipahami dengan baik oleh seluruh pengguna layanan",
//     "options": ['Sangat Setuju', 'Setuju', 'Tidak Setuju', 'Sangat Tidak Setuju'],
//     "icons": ['assets/icons/strongly-agree.svg',
//               'assets/icons/agree.svg',
//               'assets/icons/disagree.svg',
//               'assets/icons/strongly-disagree.svg'],
//     "answer_index": 1,
//   },

// ];

class Question {
  final int position;
  final int id, answer;
  final String question;
  final List<String> icons;
  final List<String> options;

  Question(
    this.position, {
      this.id, 
      this.answer, 
      this.question, 
      this.icons, 
      this.options
    }
  );
}

List<Question> questions = [
  Question(
    1,
    id: 1,
    question: "Pusat Karier memiliki visi dan misi yang jelas",
    options: [
      'Sangat Setuju',
      'Setuju',
      'Tidak Setuju',
      'Sangat Tidak Setuju'
    ],
    icons: [
      'assets/icons/strongly-agree.svg',
      'assets/icons/agree.svg',
      'assets/icons/disagree.svg',
      'assets/icons/strongly-disagree.svg'
    ],
  ),
  Question(
    2,
    id: 2,
    question:
        "Tujuan dari Pusat Karier telah difahami dengan baik oleh seluruh pengguna layanan",
    options: [
      'Sangat Setuju',
      'Setuju',
      'Tidak Setuju',
      'Sangat Tidak Setuju'
    ],
    icons: [
      'assets/icons/strongly-agree.svg',
      'assets/icons/agree.svg',
      'assets/icons/disagree.svg',
      'assets/icons/strongly-disagree.svg'
    ],
  ),
  Question(
    3,
    id: 2,
    question: "Pusat Karier memberikan layanan konsisten dengan tujuan",
    options: [
      'Sangat Setuju',
      'Setuju',
      'Tidak Setuju',
      'Sangat Tidak Setuju'
    ],
    icons: [
      'assets/icons/strongly-agree.svg',
      'assets/icons/agree.svg',
      'assets/icons/disagree.svg',
      'assets/icons/strongly-disagree.svg'
    ],
  ),
  Question(
    4,
    id: 2,
    question: "Informasi layanan Pusat Karier mudah diakses",
    options: [
      'Sangat Setuju',
      'Setuju',
      'Tidak Setuju',
      'Sangat Tidak Setuju'
    ],
    icons: [
      'assets/icons/strongly-agree.svg',
      'assets/icons/agree.svg',
      'assets/icons/disagree.svg',
      'assets/icons/strongly-disagree.svg'
    ],
  ),
];
