import 'package:flutter/material.dart';
import 'package:one_line_review_app/network/api.dart';
import 'package:one_line_review_app/constant/constant.dart';
import 'package:one_line_review_app/components/HashTagButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var diorList = HttpHelper.getBrandProduct('dior');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /*
          * 1번째 section
          * */
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '꿀같은 휴일, \n 가볍게 국내 드라마 정주행!',
                  style: HeaderTextStyleWhite,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text('#국내 '),
                    Text('#로맨스 '),
                    Text('#드라마 '),
                  ],
                )
              ],
            ),
          ),

          /*
          * 2번째 section
          * */
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '관심 키워드',
                      style: HeaderHighlightTextStyle,
                    ),
                    Text(
                      '와 관련된',
                      style: HeaderTextStyleBlack,
                    ),
                    Text(
                      '최근 리뷰',
                      style: HeaderHighlightTextStyle,
                    ),
                    Text(
                      '에요',
                      style: HeaderTextStyleBlack,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    HashTagButton(
                      tagName: '#로맨스',
                    ),
                    HashTagButton(
                      tagName: '#드라마',
                    ),
                    HashTagButton(
                      tagName: '#로맨틱코미디',
                    ),
                    HashTagButton(
                      tagName: '#SF',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
