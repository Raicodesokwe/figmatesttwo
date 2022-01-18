import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'leadingarrow.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);
  List<String> labels = ['Past test', 'Live test', 'Upcoming test'];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: LeadingArrow(size: size),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: size.height * 0.1,
                width: size.width * 0.33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/bahasha.png'),
                      const Text('Test'),
                      const Spacer(),
                      Image.asset('assets/downarrow.png')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                'Tests',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.2)),
                height: size.height * 0.07,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      tabs: const [
                        Tab(
                          text: 'Past test',
                        ),
                        Tab(
                          text: 'Live test',
                        ),
                        Tab(
                          text: 'Upcoming test',
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.2)),
                height: size.height * 0.08,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: const [
                      Text(
                        'Topic 01',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 34,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: size.height * 0.33,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.11,
                        ),
                        const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Image.asset('assets/kalenda.png'),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            const Text(
                              '9/6/2021',
                              style: TextStyle(color: Colors.white,fontSize: 12),
                            ),
                            SizedBox(
                              width: size.width * 0.18,
                            ),
                            Image.asset('assets/woch.png'),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            const Text(
                              '12.00pm',
                              style: TextStyle(color: Colors.white,fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.045,
                        ),
                        Container(
                          height: 50,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                'View Test',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.2)),
                    height: size.height * 0.08,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: const [
                          Text(
                            'Topic 02',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 34,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    AssetImage(
                      'assets/mucii.png',
                    ),
                    color: Colors.grey,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                  AssetImage(
                    'assets/meso.png',
                  ),
                  color: Colors.grey,
                )),
              BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                  AssetImage(
                    'assets/wallet.png',
                  ),
                  color: Colors.grey,
                )),
              BottomNavigationBarItem(
                  label: '.',
                  icon: ImageIcon(
                  AssetImage(
                    'assets/grad.png',
                  ),
                  color: Colors.black,
                )),
              BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                AssetImage('assets/pason.png'),
                color: Colors.grey,
              )),
            ]),
      ),
    );
  }
}
