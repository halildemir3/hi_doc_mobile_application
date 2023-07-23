import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/lists.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/constant/styles.dart';
import 'package:hi_doc/widgets/serch_bar.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: white,
      appBar: AppBar(
        title: Text("Articles", style: textStyle24),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: textColor,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.more_vert,
              color: textColor,
              size: 24,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _spacer20(),
            SearchBar(),
            _spacer20(),
            Text(
              "Popular Articles",
              style: textStyle16,
            ),
            _spacer15(),
            CategoryWidget(),
            _spacer20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Articles",
                  style: textStyle16,
                ),
                Text(
                  "See all",
                  style: textStyle12green,
                )
              ],
            ),
            TrendingArticles(),_spacer20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Related Articles",
                  style: textStyle16,
                ),
                Text(
                  "See all",
                  style: textStyle12green,
                )
              ],
            ),_spacer15(),
          RelatedArticles(),
          ],
        ),
      ),
    );
  }

  SizedBox _spacer15() => SizedBox(
        height: 15,
      );

  SizedBox _spacer20() {
    return SizedBox(
      height: 20,
    );
  }
}

class RelatedArticles extends StatelessWidget {
  const RelatedArticles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount:5,itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GestureDetector(
            child: Container(

              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: backGround)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2,right: 18),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: grey, borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Column( crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(
                            "The 25 Healtiest Fruits You Can\nEat According to a Nutritionist",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: textColor),
                          ),
                        ),
                      ),SizedBox(height: 4,), Row(
                        children: [
                          Text(
                            "Jun 12, 2021",
                            style: textStyle9grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "6 min read",
                            style: textStyle9,
                          )
                        ],
                      )



                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class TrendingArticles extends StatelessWidget {
  const TrendingArticles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      child: ListView.builder(
        itemCount: topDoctor.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(11)),
                width: 154,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 138,
                        height: 87,
                        decoration: BoxDecoration(
                            color: circleAvatarBackgroud,
                            borderRadius: BorderRadius.circular(8)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 8,
                                right: 8,
                                child: SvgPicture.asset(bookMark))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 16,
                        decoration: BoxDecoration(
                            color: backGround,
                            borderRadius: BorderRadius.circular(2)),
                        child: Center(
                          child: Text(
                            "Covid-19",
                            style: textStyle9,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                            height: 65,
                            child: Text(
                              "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                              style: textStyle12_5,
                            )),
                      ),
                      Row(
                        children: [
                          Text(
                            "Jun 12, 2021",
                            style: textStyle9grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "6 min read",
                            style: textStyle9,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: category.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                  color: green, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                category[index],
                style: textStyle14white,
              )),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
