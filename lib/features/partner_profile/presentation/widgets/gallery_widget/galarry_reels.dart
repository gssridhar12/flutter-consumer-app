// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_field, prefer_const_declarations, prefer_const_constructors_in_immutables

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';

class GalarryReels extends StatefulWidget {
  final List<Gallery> gallery;

  GalarryReels({Key? key, required this.gallery,}) : super(key: key);

  @override
  State<GalarryReels> createState() => _GalarryReelsState();
}

class _GalarryReelsState extends State<GalarryReels> with SingleTickerProviderStateMixin {
  late TabController _tabbarController;
  late List<int> likeCounts;
  late List<bool> likedStates;

  @override
  void initState() {
    super.initState();
    
    // Initialize likeCounts and likedStates with the correct length
    likeCounts = List<int>.generate(widget.gallery.length, (index) => Random().nextInt(200) + 1);
    likedStates = List<bool>.generate(widget.gallery.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
   

    return Scaffold(
      body: SizedBox(
        height: screenHeight ,
        child: Column(
          children: [
    
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widget.gallery.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.28),
                                  gradient: LinearGradient(
                                    begin: const Alignment(0.00, -1.00),
                                    end: const Alignment(0, 1),
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black,
                                    ],
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.28),
                                  child: Image.network(
                                    widget.gallery[index].media![0].mediaType ?? "",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                right: 15,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      likedStates[index] = !likedStates[index];
                                      if (likedStates[index]) {
                                        likeCounts[index]++;
                                      } else {
                                        likeCounts[index]--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: Color.fromARGB(255, 216, 209, 209).withOpacity(0.5),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          likedStates[index] ? Icons.favorite : Icons.favorite_border,
                                          color: likedStates[index] ? Colors.red : Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "${likeCounts[index]}",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                         // SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              widget.gallery[index].media![0].description ?? "",
                              style: TextStyle(fontSize: 16),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
