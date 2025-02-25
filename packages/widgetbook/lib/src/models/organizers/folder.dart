import 'package:widgetbook/src/models/organizers/organizer.dart';
import 'package:widgetbook/src/models/organizers/widget_element.dart';

/// A folder in the folder tree.
class Folder extends Organizer {
  Folder({
    required String name,
    List<Folder>? folders,
    List<WidgetElement>? widgets,
  }) : super(
          name: name,
          folders: folders,
          widgets: widgets,
        ) {
    for (final Organizer organizer in this.folders) {
      organizer.parent = this;
    }
    for (final WidgetElement organizer in this.widgets) {
      organizer.parent = this;
    }
  }
}
