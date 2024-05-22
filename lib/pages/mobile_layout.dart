import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_project/widgets/app_button.dart';
import 'package:task_project/widgets/comment_tile.dart';
import 'package:task_project/widgets/title_text.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final dio = Dio();

  void fetchUser() async {
    try {
      final response = await dio.get('http://172.19.0.1:3000/data');
      print("--------$response");
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    fetchUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.access_alarm),
        title: const SizedBox(
          height: 40,
          child: TextField(
            cursorWidth: 1.0,
            cursorHeight: 0.5,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 10,
                ),
                Text('Back to Applicants')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.27,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown.shade50,
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Header Title',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Aplied for ',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const Text(
                                'Front End Developer ',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'on August 25, 2020',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      title: 'Advance to offer',
                      buttonColor: Colors.blue,
                      titleColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      title: 'Disqualify',
                      buttonColor: Colors.white,
                      titleColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Applicant Information',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Personal details of applicant',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TitleText(
                    title: 'Applicantio for',
                    details: 'Backend Developer',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TitleText(
                    title: 'Email address',
                    details: 'krsonu12996@gmail.com',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TitleText(
                    title: 'Salary expectation',
                    details: '\$120,000',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TitleText(
                    title: 'Phone',
                    details: '+919525594153',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TitleText(
                    title: 'About',
                    details:
                        'This returns the size of the window rather than screen,ie on a system that supports windows this value will change as you resize the window rather than being a fixed value based on the screen',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Attachments ',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Container(
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
                            onPressed: () {}, child: const Text('Download'))
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  ListView(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      CommentTile(
                        author: 'Leslie Alexander',
                        comment:
                            'Ducimus quas delectus ad maxime totam doloribus reiciendis ex. Tempore dolorem maiores. Similique voluptatibus tempore non ut.',
                        timeAgo: '4d',
                      ),
                      CommentTile(
                        author: 'Michael Foster',
                        comment:
                            'Et ut autem. Voluptatem eum dolores sint necessitatibus quos. Quis eum qui dolorem accusantium voluptas voluptatem ipsum. Quo facere iusto quia accusamus veniam id explicabo et aut.',
                        timeAgo: '4d',
                      ),
                      CommentTile(
                        author: 'Dries Vincent',
                        comment:
                            'Expedita consequatur sit ea voluptas quo ipsam recusandae. Ab sint et voluptatem repudiandae voluptatem et eveniet. Nihil quas consequatur autem. Perferendis rerum et.',
                        timeAgo: '4d',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
