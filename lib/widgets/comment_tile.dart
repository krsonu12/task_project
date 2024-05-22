import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  final String author;
  final String comment;
  final String timeAgo;

  const CommentTile(
      {super.key,
      required this.author,
      required this.comment,
      required this.timeAgo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            child: Text(author.substring(0, 1)),
          ),
          title: Text(author),
          subtitle: Text(comment),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('$timeAgo ago'),
              TextButton(onPressed: () {}, child: const Text('Reply'))
            ],
          ),
        )
      ],
    );
  }
}
