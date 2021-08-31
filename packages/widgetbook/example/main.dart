import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('hello world'),
    );
  }
}

///(step 1) - Enabling Hot Reload
///Wrap the Widgetbook into a stateless widget to enable hot reloading whenever changes are made to the Widgetbook's parameters.

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    ///(step 3)- Inject your widgets
    ///Your widgets can be organized into different areas of interest by using Category, Folder, WidgetElement and Story.
    return Widgetbook(
      categories: [
        Category(
          name: 'widgets',
          widgets: [
            WidgetElement(
              name: '$CustomWidget',
              stories: [
                Story(
                  name: 'Default',
                  builder: (context) => CustomWidget(),
                ),
              ],
            ),
          ],
          folders: [
            Folder(
              name: 'Texts',
              widgets: [
                WidgetElement(
                  name: 'Normal Text',
                  stories: [
                    Story(
                      name: 'Default',
                      builder: (context) => Text(
                        'The brown fox ...',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      
      ///(step 4) set storybook name
      ///Customize Widgetbook's name according to the project by using appInfo:
      
      appInfo: AppInfo(
        name: 'Widgetbook Example',
      ),
    );
  }
}

//--------------------
///(step 2) To run the Widgetbook create a new main method, 
///Run the Widgetbook main method by executing flutter run -t (THIS/PROJECT/PATH.dart)

void main() {
  runApp(HotReload());
}
