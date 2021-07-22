import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(children: _createItemsShort()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = <Widget>[];
    for (String option in options) {
      final tempWidget = ListTile(
        title: Text(option),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort() {
    return options
        .map((option) => Column(
              children: [
                ListTile(
                  title: Text(option),
                  subtitle: Text('Anything'),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
