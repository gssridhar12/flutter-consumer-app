import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData? staricon;

  const CustomCard({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.staricon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //Color.fromARGB(255, 117, 112, 112),
        borderRadius: BorderRadius.circular(11),
      ),
      width: (MediaQuery.of(context).size.width / 2) - 25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 235,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(11),
              ),
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
               // width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                   
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,top: 5),
                      child: Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    if (staricon != null)
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(staricon,
                                size: 12,
                                color: const Color.fromARGB(255, 218, 17, 17))),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}