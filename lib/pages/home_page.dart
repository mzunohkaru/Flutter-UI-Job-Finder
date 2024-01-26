import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_job_finder/widgets/item_popular_job.dart';
import 'package:ui_job_finder/widgets/item_recent_job.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white70,
              ),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // app bar
          Container(
            padding: EdgeInsets.only(top: 100, left: 15, right: 15),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Ahad!',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white70),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Find The Best Job\nFor You!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      height: 1.3,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search the job...',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(CupertinoIcons.search),
                            suffixIcon: Icon(CupertinoIcons.clear),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.filter_list_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),

          //
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 15),
              children: [
                ListTile(
                  title: Text(
                    'Recent Jobs',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: TextButton(
                      onPressed: () {}, child: const Text('See more')),
                ),
                SizedBox(
                  height: 200,
                  child: PageView(
                    children: const [
                      ItemRecentJob(),
                      ItemRecentJob(),
                      ItemRecentJob()
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Popular Jobs',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: TextButton(
                      onPressed: () {}, child: const Text('See more')),
                ),
                const ItemPopularJob(),
                const ItemPopularJob(),
                const ItemPopularJob(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
