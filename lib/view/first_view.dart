
import 'package:flutter/material.dart';
import 'package:resume/data/dev_data.dart';
import 'package:resume/utils/app_colors.dart';
import 'package:resume/utils/app_str.dart';
import 'package:resume/widgets/skills_box.dart';
import 'package:resume/widgets/skills_progress.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.nextPage,
  });

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // Empty Space
        SizedBox(
          height: size.height * 0.1,
        ),

        /// Developer Avatar
        Container(
          padding: EdgeInsets.all(size.height * .01),
          decoration: BoxDecoration(
            color: theme.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.height * .15,
            backgroundColor: AppColors.appPrimary,
            backgroundImage: const NetworkImage(
              AppStrings.imageUrl,
            ),
          ),
        ),

        // Empty Space
        SizedBox(
          height: size.height * 0.01,
        ),

        /// Developer Full Name
        Text(
          DevData.devData.name,
          style: theme.textTheme.displayLarge,
        ),

        // Empty Space
        SizedBox(
          height: size.height * 0.02,
        ),

        /// Developer Skills
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: size.width * .05,
          runSpacing: size.width * .03,
          children: List.generate(
              DevData.devData.skillsAndProgress.length,
              (index) => SkillBox(
                    text: DevData.devData.skillsAndProgress[index].name,
                  )),
        ),

        // Empty Space
        SizedBox(
          height: size.height * 0.03,
        ),

        /// Skills Progress
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            DevData.devData.skillsAndProgress.length,
            (index) => SkillsProgress(
              progress: DevData.devData.skillsAndProgress[index].progress,
              title: DevData.devData.skillsAndProgress[index].name,
            ),
          ),
        ),
        // Empty Space
        Expanded(child: Container()),

        /// Next Page
        IconButton(
          color: theme.canvasColor,
          onPressed: nextPage,
          icon: const Icon(Icons.arrow_downward_outlined),
        ),

        /// Empty Space
        SizedBox(
          height: size.height * 0.05,
        ),
      ],
    );
  }
}
