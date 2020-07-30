import 'package:flutter/material.dart';
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
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                runAlignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: <Widget>[
                  ActionButton(
                    'register',
                    AppLocalizations.of(context).translate('Register'),
                  ),
                  ActionButton(
                    'search',
                    AppLocalizations.of(context).translate('Search'),
                  ),
                  ActionButton(
                    'deworming',
                    AppLocalizations.of(context).translate('Deworming'),
                  ),
                  ActionButton(
                    'vaccine',
                    AppLocalizations.of(context).translate('Immunization'),
                  ),
                  ActionButton(
                    'growth1',
                    AppLocalizations.of(context).translate('Growth'),
                  ),
                  ActionButton(
                    'sync',
                    AppLocalizations.of(context).translate('Sync'),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: homeBottomAppBar,
      ),
    );
  }
}
