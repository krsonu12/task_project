import 'package:flutter/material.dart';

class TimelineItem {
  final String title;
  final String subtitle;
  final String date;

  TimelineItem(
      {required this.title, required this.subtitle, required this.date});
}

final items = [
  TimelineItem(
    title: 'Applied to Front End Developer',
    subtitle: '',
    date: 'Sep 7',
  ),
  TimelineItem(
    title: 'Advanced to phone screening by Bethany Blake',
    subtitle: '',
    date: 'Sep 20',
  ),
  TimelineItem(
    title: 'Completed phone screening with Martha Gardner',
    subtitle: '',
    date: 'Sep 22',
  ),
  TimelineItem(
    title: 'Advanced to interview by Bethany Blake',
    subtitle: 'Completed interview with Katherine Snyder',
    date: 'Sep 28',
  ),
  TimelineItem(
    title: 'Advanced to offer',
    subtitle: '',
    date: 'Sep 30',
  ),
];

class Timeline extends StatelessWidget {
  final List<TimelineItem> items;

  const Timeline({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.subtitle),
            trailing: Text(item.date),
          );
        },
      ),
    );
  }
}
