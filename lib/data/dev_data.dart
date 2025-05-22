
import 'package:resume/models/dev_model.dart';

/// Custom Class for storing Developer Data locally
class DevData {
  DevData._();

  static DevModel devData = DevModel(
    name: "Soham Mondal",
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 0.9,
      ),
      SkillsData(
        name: 'Web Developer',
        progress: 1,
      ),
    ],
    hobbies: <String>[
      "Learning about Development",
      "Create cinematic videos",
      "Plying FootBall",
    ],
    number: '+91 9083861312',
    mail: 'sohammondal1304@gmail.com',
  );

  static const String devBio = """
I'm Soham, a motivated software engineering student with a passion for mobile development using Dart and Flutter 📱.And also a fullstack WebDeveloper. I enjoy sharing programming knowledge on social media 🌐. Check out my portfolio on Instagram and YouTube 📷🎥. Let's explore mobile development together! 🚀"
""";
}
