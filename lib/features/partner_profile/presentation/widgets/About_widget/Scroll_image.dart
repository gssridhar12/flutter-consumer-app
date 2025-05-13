import 'dart:math';

import 'package:flutter/material.dart';

class Scrollimage extends StatefulWidget {
  final List<String> imageUrls; // List of image URLs
  final List<String> descriptions; // List of descriptions

  const Scrollimage({
    Key? key,
    required this.imageUrls,
    required this.descriptions,
  }) : super(key: key);

  @override
  _ScrollimageState createState() => _ScrollimageState();
}

class _ScrollimageState extends State<Scrollimage> {
  late int _likeCount;
  bool _isLiked = false;
  int _currentIndex = 0;
  
  // Initialize like counts for each image
  late List<int> likeCounts;

  @override
  void initState() {
    super.initState();
    likeCounts = List<int>.generate(widget.imageUrls.length, (index) => Random().nextInt(200) + 1);
    _likeCount = likeCounts[_currentIndex];
  }

  void _updateLikeCount() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1; // Increment or decrement
      likeCounts[_currentIndex] = _likeCount; // Update like count for current image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.28),
                ),
                child: PageView.builder(
                  itemCount: widget.imageUrls.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index; // Update current index
                      _likeCount = likeCounts[_currentIndex]; // Update like count
                      _isLiked = false; // Reset like status when changing images
                    });
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.28),
                              child: Image.network(
                                widget.imageUrls[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                           SizedBox(height: 10),
                          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              widget.descriptions[_currentIndex], // Display description based on current index
              style: TextStyle(fontSize: 16),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
           SizedBox(height: 10),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: GestureDetector(
                  onTap: _updateLikeCount,
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
                          _isLiked ? Icons.favorite : Icons.favorite_border,
                          color: _isLiked ? Colors.red : Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "$_likeCount",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.imageUrls.length, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: _currentIndex == index ? 8.0 : 6.0,
                      height: _currentIndex == index ? 12.0 : 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.white : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
         
          
        ],
      ),
    );
  }
}
