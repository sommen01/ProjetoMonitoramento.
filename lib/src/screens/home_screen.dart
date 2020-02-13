import 'package:flutter/material.dart';
import 'package:projetoeder/src/pages/homepage.dart';
import 'package:projetoeder/src/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
            appBar: AppBar(
            title: Text('Pagina inicial'),
          ),
          body: HomePage(),
          drawer: CustomDrawer(_pageController),
        ),
      ],
    );
  }
}
