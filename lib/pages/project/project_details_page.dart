import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;
  final Widget showdetail;
  var formatter = NumberFormat('#,###,000');

  ProjectDetailsPage({Key? key, required this.project,required this.showdetail}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFFF5EDDE),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Image.asset(
                      project.imageUrl,
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10.0),
                    Text(project.description2),
                    const SizedBox(height: 10.0),
                    Text('ระยะเวลาโครงการ: ${project.duration2}'),
                    const SizedBox(height: 10.0),
                    Text('พื้นที่ดำเนินโครงการ: ${project.area}'),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
            Container(
                color: Colors.white70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        'ยอดบริจาคขณะนี้',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text('${formatter.format(project.receiveAmount).toString()} บาท',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      showdetail,
                      SizedBox(height: 5.0,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                                    textStyle:const TextStyle(fontSize: 20)
                            ), child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.favorite),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('ร่วมบริจาค'),
                                ),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                                textStyle:const TextStyle(fontSize: 20)
                            ), child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.add_shopping_cart),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('หยิบใส่ตะกร้า'),
                                ),
                              ],
                            ),),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          const SizedBox(height: 10.0,),
                          Text('แชร์ให้เพื่อน'),
                          const SizedBox(height: 10.0,),
                          Container(
                            height: 10.0,
                            color: Colors.white60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(FontAwesomeIcons.line),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(FontAwesomeIcons.facebook),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(FontAwesomeIcons.twitter),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

