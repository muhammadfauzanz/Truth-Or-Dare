import 'dart:math';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Darecontroller extends GetxController {
  var Darequestion = Rxn<String>();
  int? _lastIndexDareQuestion;

  Future<void> fetchRandomDareQuestion() async {
    int? indexDareQuestion;

    do {
      indexDareQuestion = Random().nextInt(20) + 1;
    } while (indexDareQuestion == _lastIndexDareQuestion);

    _lastIndexDareQuestion =
        indexDareQuestion; // Tempat penyimpanan Index Terakhir

    final snapshot =
        await FirebaseFirestore.instance
            .collection('dare_question')
            .where('randomIndex', isEqualTo: indexDareQuestion)
            .limit(1)
            .get();

    if (snapshot.docs.isNotEmpty) {
      Darequestion.value = snapshot.docs.first['text'];
    }
  }

  @override
  void onInit() {
    fetchRandomDareQuestion();
    super.onInit();
  }
}
