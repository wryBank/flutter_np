import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/food0.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: screenWidth,
                  height: screenHeight * 0.6,
                )
              ],
            ),
            Positioned(
              top: screenHeight * 0.35,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.grey[100],
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Fruit nutrition meal',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba)),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba)),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba)),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba)),
                          Icon(Icons.star, color: Colors.grey[300]),
                          const SizedBox(width: 10),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[400],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '1287 comments',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                const Icon(Icons.circle, color: Color(0xFF75c5ba)),
                                const SizedBox(width: 5),
                                Text(
                                  'Nomal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                const Icon(Icons.location_on_outlined, color: Color(0xFF75c5ba)),
                                const SizedBox(width: 5),
                                Text(
                                  '1.7km',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                const Icon(Icons.av_timer_outlined, color: Color(0xFF75c5ba)),
                                const SizedBox(width: 5),
                                Text(
                                  '32min',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Introduce',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 10),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          bool isOverflowing = constraints.maxHeight > 28; // Check if the text exceeds 3 lines (3 * 16 = 48)
                          return Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[400],
                                ),
                                maxLines: 3,
                                // overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 10),
                              if (isOverflowing)
                                const Text(
                                  'Read more',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF75c5ba),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.33,
              left: screenWidth * 0.8,
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF75c5ba),
                child: Icon(Icons.favorite, size: 25, color: Colors.white),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: screenWidth * 0.8,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white.withOpacity(0.5),
                child: const Icon(Icons.add_shopping_cart, size: 25, color: Colors.black),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: screenWidth * 0.1,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white.withOpacity(0.5),
                child: const Icon(Icons.arrow_back, size: 25, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // setState(() {
                      //   if (quantity > 1) quantity--;
                      // });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // setState(() {
                      //   quantity++;
                      // });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFF75c5ba)),
              onPressed: () {},
              child: const Text('12 | Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
