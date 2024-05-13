import 'package:cs442_mp1/models/activity.dart';
import 'package:flutter/material.dart';

import 'screens/activity_widget.dart';
import 'screens/information_widget.dart';
import 'screens/employment_widget.dart';
import 'screens/education_widget.dart';
import 'models/location.dart';
import 'models/employment_details.dart';
import 'models/profile.dart';
import 'screens/skills_widget.dart';

//Begin
void main() {
  // Building the profile object
  Profile profile = Profile(
      name: 'Jane Smith',
      headline: 'Senior Software Engineer',
      currentOrganization: 'Google',
      location: Location(
          city: 'Mountain View', state: 'California', country: 'United States'),
      employmentDetails: [
        EmploymentDetails(
            title: 'Senior Software Engineer',
            employmentType: 'Full-time',
            companyName: 'Google',
            companylocation: Location(
                city: 'Mountain View',
                state: 'California',
                country: 'United States'),
            startDate: 'Aug-2023',
            endDate: 'present',
            imagePath: 'assets/images/mp1-Google.jpg'),
        EmploymentDetails(
            title: 'Consultant',
            employmentType: 'Full-time',
            companyName: 'Deloitte',
            companylocation: Location(
                city: 'Chicago', state: 'Illinois', country: 'United States'),
            startDate: 'Aug-2019',
            endDate: 'Aug-2023',
            imagePath: 'assets/images/mp1-DeloitteNewLogo.jpg'),
        EmploymentDetails(
            title: 'Systems Engineer',
            employmentType: 'Full-time',
            companyName: 'TCS',
            companylocation: Location(
                city: 'San Antonio', state: 'Texas', country: 'United States'),
            startDate: 'Feb-2017',
            endDate: 'Aug-2019',
            imagePath: 'assets/images/mp1-TCS.jpg'),
      ],
      education: [
        (
          schoolName: 'Illinois Tech',
          degree: 'Bachelors in Computer Science',
          gpa: 4.0,
          schoolLogo: 'assets/images/mp1-Illinois Tech.jpg'
        ),
        (
          schoolName: 'Lincoln Park High',
          degree: 'High School Diploma',
          gpa: 3.9,
          schoolLogo: 'assets/images/mp1-LPH.jpg'
        ),
      ],
      skills: [
        (technology: 'Java', logo: 'assets/images/mp1-Java.jpg'),
        (technology: 'Python', logo: 'assets/images/mp1-Python.jpg'),
        (technology: 'React JS', logo: 'assets/images/mp1-React.jpg'),
        (technology: 'Spring Boot ', logo: 'assets/images/mp1-SpringBoot.jpg')
      ],
      activities: [
        Activity(
            activity: 'Mary posted this . 1d',
            description:
                'I am happy to share I have obtained AWS certification'),
        Activity(
            activity: 'Raj posted this . 2mo',
            description:
                'I am happy to announce I have started new postion at ABC company'),
        Activity(
            activity: 'Jane Smith posted this . 1m',
            description:
                'I have starterd new postion as senior software engineer at google')
      ]);

  runApp(
    MyApp(profile), // Passing profile object to my app widget
  );
}

class MyApp extends StatelessWidget {
  final Profile pro;
  const MyApp(this.pro, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget informationSection = InformationWidget(
        pro: pro); //custom widget to get professional information

    Widget activitySection =
        ActivityWidget(pro: pro); // custom widget to show activities

    Widget employementSection = EmploymentWidget(
        pro: pro); //custom widget to get professional employment information

    Widget educationSection = EducationWidget(
        pro: pro); //custom widget to get professional education information

    Widget skillsSection =
        SkillsWidget(pro: pro); //custom widget to get professional skills

    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 250, 251),
        body: SafeArea(
            child: ProfilePage(
                informationSection: informationSection,
                activitySection: activitySection,
                employementSection: employementSection,
                educationSection: educationSection,
                skillsSection: skillsSection)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Profile page displays all details related to professional
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.informationSection,
    required this.activitySection,
    required this.employementSection,
    required this.educationSection,
    required this.skillsSection,
  });

  final Widget informationSection;
  final Widget activitySection;
  final Widget employementSection;
  final Widget educationSection;
  final Widget skillsSection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/images/mp1-ProfilePicture.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.contain,
            alignment: Alignment.topLeft,
          ),
        ),
        informationSection,
        // added static button for only for display purpose
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(255, 127, 207, 244), // Text color
            ),
            child: const Text('Connect',
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
        ),
        activitySection,
        employementSection,
        educationSection,
        skillsSection,
      ]),
    );
  }
}
