import 'location.dart';

//Data model to get the employment details of the professional
class EmploymentDetails {
  final String title;
  final String employmentType;
  final String companyName;
  final Location companylocation;
  final String startDate;
  final String endDate;
  final String imagePath;
  EmploymentDetails(
      {required this.title,
      required this.employmentType,
      required this.companyName,
      required this.companylocation,
      required this.startDate,
      required this.endDate,
      required this.imagePath});
}
