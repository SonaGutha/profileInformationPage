import 'activity.dart';

import 'location.dart';
import 'employment_details.dart';

// Data model for the profile page
class Profile {
  final String name;
  final String headline;
  final String currentOrganization;
  final Location location;
  //Each entry is an instance of 'EmploymentDetails' which contains employment details
  final List<EmploymentDetails> employmentDetails;
  //Each entry contains education details
  final List<
          ({String schoolLogo, String schoolName, double gpa, String degree})>
      education;

  final List<({String technology, String logo})> skills;

  final List<Activity> activities;

  Profile(
      {required this.name,
      required this.headline,
      required this.currentOrganization,
      required this.location,
      required this.employmentDetails,
      required this.education,
      required this.skills,
      required this.activities});
}
