import 'package:flutter/material.dart';
import 'package:ui_job_finder/pages/details_page.dart';

class ItemPopularJob extends StatelessWidget {
  const ItemPopularJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const DetailsPage()));
        },
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        leading: const Icon(
          Icons.mobile_friendly,
          size: 30,
        ),
        title: Text('Senior Flutter Developer'),
        subtitle: const Text(
          'Android Studio - Flutter',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
