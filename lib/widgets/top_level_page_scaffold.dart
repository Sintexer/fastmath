import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopLevelPageScaffold extends StatelessWidget {
  final Widget body;

  const TopLevelPageScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fast Math")),
      drawer: TopLevelDrawer(),
      body: body,
    );
  }
}

class TopLevelDrawer extends StatelessWidget {
  const TopLevelDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(child: Text('Menu')),
          TopLevelDrawerTile(
            icon: Icons.home,
            title: 'Home',
            goRoute: '/',
          ),
          TopLevelDrawerTile(
            icon: Icons.calculate,
            title: 'Trainings',
            goRoute: '/trainings',
          ),
          TopLevelDrawerTile(
            icon: Icons.topic,
            title: 'Units',
            goRoute: '/units',
          ),
        ],
      ),
    );
  }
}

class TopLevelDrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String goRoute;

  const TopLevelDrawerTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.goRoute});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => context.go(goRoute),
    );
  }
}
