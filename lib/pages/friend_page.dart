import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  List<String> items = ["心想事成","海闊天空",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              "assets/images/cat.png",
              width: 30,
              height: 30,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const Text(
              "關注您的好友以觀看他們的影片",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50),),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.lightGreenAccent,
                    child: Image.asset(
                      "assets/images/telephone.png",
                      width: 50,
                      height: 50,
                      color: Colors.white,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "聯絡人",
                        style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "尋找您的聯絡人",
                        style: TextStyle(color: Colors.grey,fontSize: 18,),
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Container(
                      width: MediaQuery.of(context).size.width-110,
                      padding: const EdgeInsets.symmetric(vertical: 3,),
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      child: const Text(
                        "尋找",
                        style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ...items.map((e) {
              return Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50),),
                        child: Image.asset(
                          "assets/images/cat.png",
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              e,
                              style: TextStyle(color: Colors.white,fontSize: 18,),
                            ),
                          ),
                          const SizedBox(height: 3,),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              "關注了您",
                              style: TextStyle(color: Colors.grey,fontSize: 18,),
                            ),
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Container(
                                width: ((MediaQuery.of(context).size.width-100)/2)-10,
                                padding: const EdgeInsets.symmetric(vertical: 3,),
                                margin: const EdgeInsets.only(left: 10),
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF5B5B5B),
                                  borderRadius: BorderRadius.all(Radius.circular(10),),
                                ),
                                child: const Text(
                                  "移除",
                                  style: TextStyle(color: Colors.white,fontSize: 18,),
                                ),
                              ),

                              Container(
                                width: ((MediaQuery.of(context).size.width-100)/2)-10,
                                padding: const EdgeInsets.symmetric(vertical: 3,),
                                margin: const EdgeInsets.only(left: 10),
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(10),),
                                ),
                                child: const Text(
                                  "關注對方",
                                  style: TextStyle(color: Colors.white,fontSize: 18,),
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
