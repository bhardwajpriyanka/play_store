import 'package:flutter/material.dart';
import 'package:play_store/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class foryou_screen extends StatefulWidget {
  const foryou_screen({Key? key}) : super(key: key);

  @override
  State<foryou_screen> createState() => _topchart_screenState();
}

class _topchart_screenState extends State<foryou_screen> {
  homeprovider? hf, ht;
  @override
  Widget build(BuildContext context) {
    hf = Provider.of<homeprovider>(context, listen: false);
    ht = Provider.of<homeprovider>(context, listen: true);
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(17.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Suggested for you",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return playStore(ht!.images[index], ht!.name[index]);
                  },
                  itemCount: hf!.images.length,
                ),
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("New & updates apps",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return playStore(ht!.images2[index], ht!.name[index]);
                  },
                  itemCount: hf!.images2.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget playStore(String path, String na) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("${path}", fit: BoxFit.cover),
                ),
              ),
            ),
            Text("$na",style: TextStyle(fontSize: 10),),
            Row(
              children: [
                Text("4.8"),
                SizedBox(width: 2),
                Icon(Icons.star,size: 13,)
              ],
            )
          ],
        ),
      ],
    );
  }
}