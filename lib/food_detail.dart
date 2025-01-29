import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/blocs/cart/cart_bloc.dart';
import 'package:flutter_application_1/logic/blocs/cart/cart_event.dart';
import 'package:flutter_application_1/logic/blocs/cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba), size: 20),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba), size: 20),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba), size: 20),
                          const Icon(Icons.star_rate_rounded, color: Color(0xFF75c5ba), size: 20),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                            size: 20,
                          ),
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
                                const Icon(
                                  Icons.circle,
                                  color: Color(0xFF75c5ba),
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Nomal',
                                  style: TextStyle(
                                    fontSize: 14,
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
                                const Icon(Icons.location_on_outlined, color: Color(0xFF75c5ba), size: 20),
                                const SizedBox(width: 5),
                                Text(
                                  '1.7km',
                                  style: TextStyle(
                                    fontSize: 14,
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
                                const Icon(
                                  Icons.av_timer_outlined,
                                  color: Color(0xFF75c5ba),
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '32min',
                                  style: TextStyle(
                                    fontSize: 14,
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
                          bool isOverflowing = constraints.maxHeight > 48; // Check if the text exceeds 3 lines (3 * 16 = 48)
                          return Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The pasta in the picture USES alkaline noodles, which many people are not very familiar with. The sauce is also very popular with the local people.",

                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[400],
                                ),
                                maxLines: 3,
                                // overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 10),
                              if (isOverflowing)
                                const Row(
                                  children: [
                                    Text(
                                      'Expand',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF75c5ba),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFF75c5ba),
                                    ),
                                  ],
                                )
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
              left: screenWidth * 0.85,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white.withOpacity(0.5),
                child: const Icon(Icons.shopping_cart_outlined, size: 20, color: Colors.black),
              ),
            ),
            BlocBuilder<CartBloc, CartModelState>(builder: (context, state) {
              return Positioned(
                top: screenHeight * 0.05,
                left: screenWidth * 0.90,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: const Color(0xFF75c5ba),
                  child: Text('${state.cartitem}', style: const TextStyle(color: Colors.white, fontSize: 10)),
                ),
              );
            }),
            Positioned(
              top: screenHeight * 0.05,
              left: screenWidth * 0.05,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white.withOpacity(0.5),
                child: const Icon(Icons.arrow_back_ios_new, size: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<CartBloc, CartModelState>(builder: (context, state) {
        return BottomAppBar(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (state.count > 0) context.read<CartBloc>().add(CartEventRemove(item: 1));
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        '${state.count}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<CartBloc>().add(CartEventAdd(item: 1));
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: const Color(0xFF75c5ba),
                      minimumSize: const Size(150, 50)),
                  onPressed: () {
                    context.read<CartBloc>().add(AddtoCart(cartitem: 1));
                  },
                  child: Text(
                    '\$ ${state.count * 14} | Add to Cart',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
