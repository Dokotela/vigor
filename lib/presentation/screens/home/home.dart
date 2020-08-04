import 'package:flutter/material.dart';
import 'package:vigor/presentation/screens/registration/registration.dart';
import '../../shared/shared.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).translate('title')),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              runAlignment: WrapAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: <Widget>[
                ActionButton(
                  fileName: 'register',
                  buttonText:
                      AppLocalizations.of(context).translate('Register'),
                  nextPage: Registration(),
                ),
                ActionButton(
                  fileName: 'search',
                  buttonText: AppLocalizations.of(context).translate('Search'),
                  nextPage: HomeScreen(),
                ),
                ActionButton(
                  fileName: 'deworming',
                  buttonText:
                      AppLocalizations.of(context).translate('Deworming'),
                  nextPage: HomeScreen(),
                ),
                ActionButton(
                  fileName: 'vaccine',
                  buttonText:
                      AppLocalizations.of(context).translate('Immunization'),
                  nextPage: HomeScreen(),
                ),
                ActionButton(
                  fileName: 'growth1',
                  buttonText: AppLocalizations.of(context).translate('Growth'),
                  nextPage: HomeScreen(),
                ),
                ActionButton(
                  fileName: 'sync',
                  buttonText: AppLocalizations.of(context).translate('Sync'),
                  nextPage: HomeScreen(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: homeBottomAppBar,
      ),
    );
  }
}
