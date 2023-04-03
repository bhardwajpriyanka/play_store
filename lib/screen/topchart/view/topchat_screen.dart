import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class topchat_screen extends StatefulWidget {
  const topchat_screen({Key? key}) : super(key: key);

  @override
  State<topchat_screen> createState() => _foryou_screenState();
}

class _foryou_screenState extends State<topchat_screen> {
  homeprovider? hf, ht;

  @override
  Widget build(BuildContext context) {
    hf = Provider.of<homeprovider>(context, listen: false);
    ht = Provider.of<homeprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body:  Column(
          children: [
            Consumer<homeprovider>(
              builder: (context, value, child) => Expanded(
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,width: 70,
                            child: Image.asset("${ht!.images[index]}",fit: BoxFit.cover),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${ht!.name[index]}"),
                              Spacer(),
                              Text("60 MB",style: TextStyle(fontSize: 18,color: Colors.black26),),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          height: 1,width: double.infinity,color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                  itemCount: 7,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}