class TruthCardModel {
  final String type; // "Truth" atau "Dare"
  final String text; // isi pertanyaannya
  final int randomIndex; // index acak dari 1–50 atau 1–100

  TruthCardModel({
    required this.type,
    required this.text,
    required this.randomIndex,
  });

  // Factory method untuk ambil data dari Firestore
  factory TruthCardModel.fromFirestore(Map<String, dynamic> data) {
    return TruthCardModel(
      type: data['type'] ?? '',
      text: data['text'] ?? '',
      randomIndex: data['randomIndex'] ?? 0,
    );
  }

  // Convert ke Map untuk upload ke Firestore
  Map<String, dynamic> toMap() {
    return {'type': type, 'text': text, 'randomIndex': randomIndex};
  }
}
