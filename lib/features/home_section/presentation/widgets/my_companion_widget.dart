import 'package:flutter/material.dart';



class CompanionSection extends StatelessWidget {
  const CompanionSection();

  @override
  Widget build(BuildContext context) {
    Widget companion(String asset) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            asset,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Row(
          children: [
            companion('assets/images/companion.png'),
            const SizedBox(width: 12),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(child: Icon(Icons.add, size: 28, color: Colors.grey)),
            ),
          ],
        ),
      ],
    );
  }
}