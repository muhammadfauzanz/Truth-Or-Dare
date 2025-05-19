import 'dart:math';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Truthcontroller extends GetxController {
  var Truthquestion = Rxn<String>();
  final Set<int> _usedIndexes = {}; // Untuk menyimpan index yang sudah dipakai
  final int totalQuestions = 50; // Total pertanyaan (disesuaikan)
  final _random = Random();

  Future<void> fetchRandomTruthQuestion() async {
    if (_usedIndexes.length >= totalQuestions) {
      Truthquestion.value = 'Semua pertanyaan sudah habis!';
      return;
    }

    int indexTruthQuestion;

    // Loop hingga mendapat index yang belum digunakan
    do {
      indexTruthQuestion = _random.nextInt(totalQuestions) + 1;
    } while (_usedIndexes.contains(indexTruthQuestion));

    // Simpan index yang sudah dipakai
    _usedIndexes.add(indexTruthQuestion);

    final snapshot =
        await FirebaseFirestore.instance
            .collection('truth_questions')
            .where('randomIndex', isEqualTo: indexTruthQuestion)
            .limit(1)
            .get();

    if (snapshot.docs.isNotEmpty) {
      Truthquestion.value = snapshot.docs.first['text'];
    } else {
      Truthquestion.value = 'Pertanyaan tidak ditemukan.';
    }
  }

  @override
  void onInit() {
    fetchRandomTruthQuestion();
    super.onInit();
  }
}
