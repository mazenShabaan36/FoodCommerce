import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Notifications',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1.0),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.85,
          child: ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:  MediaQuery.of(context).size.height *0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisAlignment: MainAxisAlignment.,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage('assets/sam.jpg'),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *0.04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Ordered Delivered',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),),
                              Text('3 minutes ago',style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.yellow.shade800
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height *0.05,
                        child: Text('Hi,your order containing veg burger has been delivered a few minutes ago in your home',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        ),
                      ),
                    ),
            
                  ],
                ),
              ),
            );
          },
          itemCount: 12,),
        ),
      ),
    );
  }
}
