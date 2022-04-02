import 'package:atiqur_rahman/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPage extends StatelessWidget {
  final String loadingMessage;

  const LoadingPage({Key? key, required this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Shimmer.fromColors(
            baseColor: shimmerColor,
            highlightColor: lowShimmerColor,
            enabled: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                ),
                // adress
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40.0,
                        height: 30.0,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      Container(
                        width: 40.0,
                        height: 30.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // search
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      // const Padding(padding: EdgeInsets.symmetric(horizontal: 48.0)),
                      Expanded(
                        child: Container(
                          height: 40.0,
                          color: Colors.white,
                        ),
                      ),
                      // const Padding(padding: EdgeInsets.symmetric(horizontal: 48.0)),
                    ],
                  ),
                ),
                // banner
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      // for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 80,
                            width: 180,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // text
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 15.0,
                        width: 100,
                        color: Colors.white,
                      ),
                      const Spacer(),
                      Container(
                        height: 15.0,
                        width: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 50,
                                width: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        // const Padding(padding: EdgeInsets.symmetric(horizontal: 48.0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Shimmer.fromColors(
              baseColor: shimmerColor,
              highlightColor: lowShimmerColor,
              enabled: true,
              child: ListView.builder(
                itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 120,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),
    );

    // Column(
    //   mainAxisSize: MainAxisSize.max,
    //   children: <Widget>[
    //     Shimmer.fromColors(
    //       baseColor: shimmerColor,
    //       highlightColor: lowShimmerColor,
    //       enabled: true,
    //       child: Padding(
    //         padding: const EdgeInsets.only(bottom: 30.0),
    //         child: Container(
    //           width: screenWidth * 75,
    //           height: screenWidth * 25,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Expanded(
    //       child: Shimmer.fromColors(
    //         baseColor: secondayColor,
    //         highlightColor: lowSecondayColor,
    //         enabled: true,
    //         child: Padding(
    //           padding: const EdgeInsets.only(bottom: 30.0),
    //           child: Container(
    //             width: double.infinity,
    //             height: screenHeight / 3,
    //             color: Colors.white,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),

    // Widget build(BuildContext context) {
    //   final mediaQuery = MediaQuery.of(context);
    //   final screenHeight = mediaQuery.size.height;
    //   return Container(
    //     height: screenHeight,
    //     width: double.infinity,
    //     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       children: <Widget>[
    //         Shimmer.fromColors(
    //             baseColor: Colors.grey[300],
    //             highlightColor: Colors.grey[100],
    //             enabled: true,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Expanded(
    //                   child: Container(
    //                     width: double.infinity,
    //                     decoration: BoxDecoration(
    //                         shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
    //                   ),
    //                 ),
    //                 const Padding(
    //                   padding: EdgeInsets.symmetric(vertical: 18.0),
    //                 ),
    //                 Container(
    //                   width: double.infinity,
    //                   height: 16.0,
    //                   color: Colors.white,
    //                 ),
    //                 Expanded(
    //                   child: Container(
    //                     width: double.infinity,
    //                     decoration: BoxDecoration(
    //                         shape: BoxShape.rectangle, color: Color(0xFFe0f2f1)),
    //                   ),
    //                 ),
    //               ],
    //             )),
    //         SizedBox(
    //           height: 50,
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}
