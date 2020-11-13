# vigor

A mobile Pediatric app for use in low-resource settings. Using the power of FHIR and Flutter to create seemless integration.

## Credit where Credit is due

I need to make sure I acknowledge one of my colleagues, [John Manning](https://github.com/FireJuun), and that I have stolen much of his code from his [prapare repo](https://github.com/FireJuun/prapare). I have tried to make note of where in which files I have copied from, but if I missed any, my apologies.

## Structure

Much of this structure is still in development, but currently I have tried to adhere to the architecture outlines in Prapare above. Details (along with slight modifications are below):

| Folder | Subfolders | Description |
| --- | --- | --- | 
| /_internal                            || custom components/variations of existing Flutter widgets, utils, constants, and the like|
|| /constants                           | local constants created for the app| 
||  /utils                              | local functions that do things like formatting | 
||  /extended_widgets                   | custom variations on existing Flutter widgets| 
| /controllers                          || manages state of the model and resultant data| 
||  /commands                           | performs a specific global task (login, logout, change password)
||    ../<command_name>_controller.dart | currently all logic exists in this single class | 
||  /local                              | local controller state management| 
||    ../<local_name>_controller.dart   | currently all logic exists in this single class | 
|/models                                || class/objects created specifically for this app| 
||  /value_objects                      | objects with built-in validation| 
||  /failures                           | failure objects so that we don't throw errors |
||  /data                               | data models| 
|/services                              || interaction with the outside world (REST, http, file storage)
|/ui                                    || essentially all things a user sees in the app| 
||  icons.dart                          | icons| 
||  themes.dart                         | custom themes and font sizes| 
||  /styled_components                  | shared widgets that use a common design system / theme so that the app seems consistent across screens
||    ../<widget_name>.dart             | these are often combination of widgets that are defined together as a single item
||  /views                              | top level widgets that are loaded via a route| 
||    ../<screen_name>/                   || contains all code specific to this screen that is not shared
||      ../../<screen_name>.dart             | the screen widget, may optionally include 'page', 'card', or 'panel' at the end based on view type
||      ../../<screen_name>_binding.dart     | controllers/services that are loaded (or lazy-loaded) in a view
||      ../../<screen_name>_controller.dart  | the viewcontroller that only affects this screen widget
||      ../../<screen_name>_test.dart        | any relevant tests for the screen widget or its viewcontroller
|/routes                                || maps route to screen widgets| 
||  app_pages.dart                      | the app|
||  app_routes.dart                     | string route names used in the app| 
| localizations.dart                    || class for handling all of the translations for our app |

