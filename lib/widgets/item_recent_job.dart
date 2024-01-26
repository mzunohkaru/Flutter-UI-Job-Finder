import 'package:flutter/material.dart';
import 'package:ui_job_finder/pages/details_page.dart';

class ItemRecentJob extends StatelessWidget {
  const ItemRecentJob({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const DetailsPage()));
      },
      child: Container(
        // 内側の空間を制御
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // 外側の空間を制御
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.mobile_friendly,
                  size: 30,
                ),
                const Spacer(),
                Text(
                  '\$1k - \$1.5k',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Senior Flutter Developer',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'Innovative - At place xyz',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300),
                  child: const Text(
                    'Full time',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300),
                  child: const Text(
                    'Remote',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
