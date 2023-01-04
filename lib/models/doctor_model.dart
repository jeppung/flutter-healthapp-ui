class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;

  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReview,
    required this.profile,
  });
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Luke Holland",
    position: "General Practitioner",
    averageReview: 0,
    totalReview: 0,
    profile: "assets/doctor_1.jpg",
  ),
  DoctorModel(
    name: "Sophie Harmon",
    position: "General Practitioner",
    averageReview: 0,
    totalReview: 0,
    profile: "assets/doctor_2.jpg",
  ),
  DoctorModel(
    name: "Louise Reid",
    position: "General Practitioner",
    averageReview: 3,
    totalReview: 195,
    profile: "assets/doctor_3.jpg",
  )
];
