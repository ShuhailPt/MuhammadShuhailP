import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS3Projects extends StatefulWidget {
  const MS3Projects({Key? key}) : super(key: key);

  @override
  _MS3ProjectsState createState() => _MS3ProjectsState();
}

class _MS3ProjectsState extends State<MS3Projects> {
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
            const SizedBox(height: 30.0),
            ContainerCard().type5(
              image: 'baan',
              title: DataValues.projectTitle1,
              description: DataValues.projectDescription1,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type5(
              image: 'takatuf',
              title: DataValues.projectTitle2,
              description: DataValues.projectDescription2,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type5(
              image: 'iyc',
              title: DataValues.projectTitle3,
              description: DataValues.projectDescription3,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type5(
              image: 'skyfly',
              title: DataValues.projectTitle4,
              description: DataValues.projectDescription4,
            ),
            const SizedBox(height: 40.0),

            if (!_showAllProjects)
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _showAllProjects = true;
                    });
                  },
                  child:Row(
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
              ContainerCard().type5(
                image: 'brown',
                title: DataValues.projectTitle9,
                description: DataValues.projectDescription9,
              ),
              const SizedBox(height: 20.0),
              ContainerCard().type5(
                image: 'npt',
                title: DataValues.projectTitle10,
                description: DataValues.projectDescription10,
              ),
              const SizedBox(height: 20.0),
              ContainerCard().type5(
                image: 'boche',
                title: DataValues.projectTitle5,
                description: DataValues.projectDescription5,
              ),
              const SizedBox(height: 20.0),
              ContainerCard().type5(
                image: 'flatFinder',
                title: DataValues.projectTitle6,
                description: DataValues.projectDescription6,
              ),
              const SizedBox(height: 20.0),
              ContainerCard().type5(
                image: 'vantal',
                title: DataValues.projectTitle7,
                description: DataValues.projectDescription7,
              ),
              const SizedBox(height: 20.0),
              ContainerCard().type5(
                image: 'forwayanad',
                title: DataValues.projectTitle8,
                description: DataValues.projectDescription8,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
