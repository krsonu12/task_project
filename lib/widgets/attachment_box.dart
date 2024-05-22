import 'package:flutter/material.dart';

class AttachementBox extends StatelessWidget {
  const AttachementBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.attach_file_sharp),
              ),
              const Text('resume_frontend_developer'),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Download',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
