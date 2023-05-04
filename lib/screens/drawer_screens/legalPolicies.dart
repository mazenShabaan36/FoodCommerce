import 'package:ecommerce/screens/detailed_screens/policy_details.dart';
import 'package:flutter/material.dart';

class legal_Policies extends StatefulWidget {
  const legal_Policies({Key? key}) : super(key: key);

  @override
  State<legal_Policies> createState() => _legal_PoliciesState();
}

class _legal_PoliciesState extends State<legal_Policies> {
  List texts = [
    'Terms & Conditions',
    'Data Privacy & Policy',
    'Cancellation & Return',
    'Email Help& Faq\'s'
    // 'Email Help& Faq\'s'
  ];
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.125,
              backgroundColor: Colors.orange,

              //  title: Center(child: Text('data')),
              // leadingWidth: 20,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Policies',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(4.0, 2.0),
                          blurRadius: 8.0,
                          color: Colors.black,
                        )
                      ]),
                ),
                background: Image.asset(
                  'assets/policy.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  colorBlendMode: BlendMode.color,
                ),
              )
              /* Stack(
                children: [
                  Image.asset(
                    'assets/advertis.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Center(
                      child: Text(
                    'Policies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ))
                ],
              )
              */
              ),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  //  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  // height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          texts[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *0.1375,
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                          maxLines: 13,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          onPressed: () {
                            if(texts[index] =='Data Privacy & Policy'){ 
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Policty_detail_screen()));
                          }
                          },
                          child: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                );
              }, childCount: 4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // maxCrossAxisExtent: 200,
                  crossAxisCount: 2,
                  mainAxisExtent: 370,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.5))
        ],
      ),
    );
  }
}
