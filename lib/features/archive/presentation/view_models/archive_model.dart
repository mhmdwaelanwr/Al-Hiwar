import 'package:cloud_firestore/cloud_firestore.dart';

class ArchiveModel {
  ArchiveModel({
    required this.imageUrl,
    required this.titleAr,
    required this.titleEn,
    required this.details1Ar,
    required this.details1En,
    required this.details2Ar,
    required this.details2En,
    required this.details3Ar,
    required this.details3En,
    required this.createdAt,
  });

  final String imageUrl;

  final String titleAr;
  final String titleEn;

  final String details1Ar;
  final String details1En;

  final String details2Ar;
  final String details2En;

  final String details3Ar;
  final String details3En;

  final Timestamp createdAt;

  factory ArchiveModel.fromDocument(Map<String, dynamic> doc) {
    return ArchiveModel(
      imageUrl: doc['image'] ?? '',
      titleAr: doc['titleAr'] ?? '',
      titleEn: doc['titleEn'] ?? '',
      details1Ar: doc['detail1Ar'] ?? '',
      details1En: doc['detail1En'] ?? '',
      details2Ar: doc['detail2Ar'] ?? '',
      details2En: doc['detail2En'] ?? '',
      details3Ar: doc['detail3Ar'] ?? '',
      details3En: doc['detail3En'] ?? '',
      createdAt: doc['createdAt'] ?? Timestamp.now(),
    );
  }
}
