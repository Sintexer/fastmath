import 'package:fastmath/widgets/top_level_page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class UnitsScreen extends ConsumerWidget {
  const UnitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final items = [
      const UnitTile(
          title: "Addition",
          route: "/units/addition",
          icon: FontAwesomeIcons.plus),
      const UnitTile(
          title: "Subtraction",
          route: "/units/subtraction",
          icon: FontAwesomeIcons.minus),
      const UnitTile(
          title: "Multiplication",
          route: "/units/multiplication",
          icon: FontAwesomeIcons.xmark),
      const UnitTile(
          title: "Division",
          route: "/units/division",
          icon: FontAwesomeIcons.divide),
      const UnitTile(
          title: "Percent calculation",
          route: "/units/percent",
          icon: FontAwesomeIcons.percent),
      const UnitTile(
          title: "Power calculation",
          route: "/units/power",
          icon: FontAwesomeIcons.superscript),
    ];

    return TopLevelPageScaffold(
      body: Container(
        color: colorScheme.surfaceContainer,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            width: 600,
            child: ListView.separated(
              itemCount: items.length,
              separatorBuilder: (_, __)=> SizedBox(height: 2.0),
              itemBuilder: (context, index) {
                final isFirst = index == 0;
                final isLast = index == items.length - 1;
                return Container(
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerLowest,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isFirst ? 16.0 : 4),
                      topRight: Radius.circular(isFirst ? 16.0 : 4),
                      bottomLeft:
                          Radius.circular(isLast ? 16.0 : 4),
                      bottomRight:
                          Radius.circular(isLast ? 16.0 : 4),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: items[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class UnitTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;

  const UnitTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Icon(icon, size: 24.0),
      title: Text(title),
      onTap: () => context.go(route),
    );
  }
}
