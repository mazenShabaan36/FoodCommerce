//import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/support_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visibility_detector/visibility_detector.dart';

class support extends StatefulWidget {
  const support({Key? key}) : super(key: key);

  @override
  _supportState createState() => _supportState();
}

class _supportState extends State<support> {
  int current_index = 0;
  /* final List<Widget> items = [
   /* Center(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset('assets/call.png'),
          ),
          Text('sxmcanakncalkscmsack;sa,cm sa.mcs;lacmaa'),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Request Call'))),
        ],
      ),
    ),
    Center(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset('assets/call.png'),
          ),
          Text('sxmcanakncalkscmsack;sa,cm sa.mcs;lacmaa'),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Request Call'))),
        ],
      ),
    ),
    */
    Image.asset('assets/')
  ];
  */
  Widget buildView(String asset, String text, Function onClick,
      String buttonText, Color color1, Color color2) {
    return Center(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset(asset),
          ),
          Text(text),
          Center(
            child: ElevatedButton(
              onPressed: onClick(),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }

  List<Color> colors = [
    Colors.indigo.shade100,
    Colors.green.shade100,
    Colors.yellow.shade100,
    Colors.white10,
    Colors.red.shade100
  ];
  List<Color> colorsText = [
    Colors.indigo,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.red
  ];

  List<supportMod> items = [
    supportMod(
        title: 'Call Support',
        subtitle:
            'Our one of experts will call ou within 5 Minutes to help youon the fly',
        photo: 'assets/call.png',
        buttonText: 'Request A Call'),
    supportMod(
        title: 'Chat Support',
        subtitle: 'You can make a conversation with us to be fast ',
        photo: 'assets/chat.png',
        buttonText: 'Chat'),
    supportMod(
        title: 'E-mail Support',
        subtitle:
            'You can send an email and we will respond as quickly as possible',
        photo: 'assets/email.png',
        buttonText: 'Send a mail'),
    supportMod(
        title: 'FAQ',
        subtitle: 'Here you will find all questions and answers you want',
        photo: 'assets/faq.png',
        buttonText: 'Read FAQ'),
    supportMod(
        title: 'Reach_us',
        subtitle: 'You can find us on a map',
        photo: 'assets/reach_is.png',
        buttonText: 'Reach_us'),
  ];

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: current_index,
        count: items.length,
        effect: JumpingDotEffect(dotWidth: 20, dotHeight: 20),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Support & Help',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      // width: MediaQuery.of(context).size.width*2,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.88,
                            child: VisibilityDetector(
                              key: Key(index.toString()),
                              onVisibilityChanged: (VisibilityInfo info) {
                                if (info.visibleFraction == 1) {
                                  setState(() {
                                    current_index = index;
                                  });
                                }
                              },
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 100.0, right: 60),
                                child: Center(
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: colors[index]
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          child: Image.asset(
                                            items[index].photo,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        items[index].title,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 9,
                                      ),
                                      Text(
                                        items[index].subtitle,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height:10
                                      ),
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(items[index].buttonText,style:TextStyle(
                                            color: colorsText[index],
                                          )),
                                          style: ElevatedButton.styleFrom(
                                              primary: colors[index]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    buildIndicator(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

/*  Swiper(
                  itemCount: items.length,
                  viewportFraction: 0.7,
                  scale: 0.8,
                  onIndexChanged: (index) {
                    setState(() {
                      current_index = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return items[index];
                  }),
            ]*/
/*   CarouselSlider(
                    
                items: items,
                options: CarouselOptions(
                  height: 200,
                    autoPlay: true,
                  //  aspectRatio: 16/9,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current_index = index;
                      });
                    })),
                  buildIndicator(),
                ],
              ),
            )*/
/*CarouselSlider(
              items: items,
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current_index = index;
                    });
                  })),
                  */
