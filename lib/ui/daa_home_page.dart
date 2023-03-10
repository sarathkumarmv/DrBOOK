import 'package:flutter/material.dart';

import '../model/diary.dart';

class DAAHomePage extends StatefulWidget {
  const DAAHomePage({Key? key}) : super(key: key);

  @override
  _DAAHomePageState createState() => _DAAHomePageState();
}

class _DAAHomePageState extends State<DAAHomePage> {
  ValueNotifier<int> _bottomIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: ValueListenableBuilder<int>(
                valueListenable: _bottomIndex,
                builder: (context, value, child) {
                  if (value == 0) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.teal[300],
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 64,
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("👋 Hello,", style: TextStyle(color: Colors.white)),
                                              SizedBox(height: 12),
                                              Text(
                                                "Dreamwalker",
                                                style: TextStyle(
                                                    fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                              )
                                            ],
                                          ),
                                          CircleAvatar()
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration:
                                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: const Center(
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none, hintText: "Search", icon: Icon(Icons.search)),
                                          ),
                                        ),
                                      ),
                                    )),
                                Expanded(
                                  flex: 6,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              calItems[index].weekday,
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            CircleAvatar(
                                              child: Text(calItems[index].day),
                                              backgroundColor: Colors.white.withOpacity(0.2),
                                              foregroundColor: Colors.white,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                  calItems[index].isEvent ? Colors.white : Colors.transparent,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                  calItems[index].isEvent ? Colors.white : Colors.transparent,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                    itemCount: calItems.length,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                            flex: 12,
                            child: ListView(
                              padding: EdgeInsets.zero,
                              children: [
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Services".toUpperCase(),
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "See All".toUpperCase(),
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 64,
                                                width: 64,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      right: 0,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[200]!,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 8,
                                                      right: 8,
                                                      top: 8,
                                                      bottom: 8,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[500]!,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 16,
                                              ),
                                              Text("Covid-19")
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () => Navigator.of(context).pushNamed("/doctors"),
                                                child: Container(
                                                  height: 64,
                                                  width: 64,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        right: 0,
                                                        top: 0,
                                                        bottom: 0,
                                                        child: CircleAvatar(
                                                          backgroundColor: Colors.teal[200]!,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 8,
                                                        right: 8,
                                                        top: 8,
                                                        bottom: 8,
                                                        child: CircleAvatar(
                                                          backgroundColor: Colors.teal[500]!,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 16,
                                              ),
                                              Text("Doctors")
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: 64,
                                                width: 64,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      right: 0,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[200]!,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 8,
                                                      right: 8,
                                                      top: 8,
                                                      bottom: 8,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[500]!,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 16,
                                              ),
                                              Text("Hospitals")
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: 64,
                                                width: 64,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      right: 0,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[200]!,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 8,
                                                      right: 8,
                                                      top: 8,
                                                      bottom: 8,
                                                      child: CircleAvatar(
                                                        backgroundColor: Colors.teal[500]!,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 16,
                                              ),
                                              Text("Medicines")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    );
                  } else if (value == 1)
                    return Container(
                      child: Center(
                        child: Text("Page 1"),
                      ),
                    );
                  else if (value == 2)
                    return Container(
                      child: Center(
                        child: Text("Page 2"),
                      ),
                    );
                  else if (value == 3)
                    return Container(
                      child: Center(
                        child: Text("Page 3"),
                      ),
                    );
                  else
                    return Container(
                      child: Center(
                        child: Text("else"),
                      ),
                    );
                }),
          ),
          Expanded(
              flex: 2,
              child: ValueListenableBuilder<int>(
                builder: (context, value, child) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 3,
                              width: 24,
                              decoration: BoxDecoration(
                                color: value == 0 ? Colors.orange : Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _bottomIndex.value = 0;
                              },
                              icon: Icon(Icons.home),
                              color: value == 0 ? Colors.orange : Colors.blueGrey,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 3,
                              width: 24,
                              decoration: BoxDecoration(
                                color: value == 1 ? Colors.orange : Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _bottomIndex.value = 1;
                              },
                              icon: Icon(Icons.document_scanner),
                              color: value == 1 ? Colors.orange : Colors.blueGrey,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 3,
                              width: 24,
                              decoration: BoxDecoration(
                                color: value == 2 ? Colors.orange : Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _bottomIndex.value = 2;
                              },
                              icon: Icon(Icons.calendar_today),
                              color: value == 2 ? Colors.orange : Colors.blueGrey,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 3,
                              width: 24,
                              decoration: BoxDecoration(
                                color: value == 3 ? Colors.orange : Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _bottomIndex.value = 3;
                              },
                              icon: Icon(Icons.settings_outlined),
                              color: value == 3 ? Colors.orange : Colors.blueGrey,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                valueListenable: _bottomIndex,
              )),
        ],
      ),
    );
  }
}