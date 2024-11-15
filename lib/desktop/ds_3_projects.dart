import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS3Projects extends StatefulWidget {
  const DS3Projects({Key? key}) : super(key: key);

  @override
  _DS3ProjectsState createState() => _DS3ProjectsState();
}

class _DS3ProjectsState extends State<DS3Projects> {
  bool _showAllProjects = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.projectKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.projectTitle,
              description: DataValues.projectDescription,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    image: 'baan',
                    title: DataValues.projectTitle1,
                    description: DataValues.projectDescription1,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    image: 'takatuf',
                    title: DataValues.projectTitle2,
                    description: DataValues.projectDescription2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    image: 'iyc',
                    title: DataValues.projectTitle3,
                    description: DataValues.projectDescription3,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    image: 'skyfly',
                    title: DataValues.projectTitle4,
                    description: DataValues.projectDescription4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            if (!_showAllProjects)
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _showAllProjects = true;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'View More',
                        style: TextStyle(fontSize: 16.0,color: AppThemeData.textPrimary,),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.keyboard_arrow_down_outlined,color: AppThemeData.textPrimary,)
                    ],
                  ),
                ),
              ),
            if (_showAllProjects) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'brown',
                      title: DataValues.projectTitle9,
                      description: DataValues.projectDescription9,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'npt',
                      title: DataValues.projectTitle10,
                      description: DataValues.projectDescription10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'boche',
                      title: DataValues.projectTitle5,
                      description: DataValues.projectDescription5,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'flatFinder',
                      title: DataValues.projectTitle6,
                      description: DataValues.projectDescription6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'vantal',
                      title: DataValues.projectTitle7,
                      description: DataValues.projectDescription7,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                    child: ContainerCard().type5(
                      image: 'forwayanad',
                      title: DataValues.projectTitle8,
                      description: DataValues.projectDescription8,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
