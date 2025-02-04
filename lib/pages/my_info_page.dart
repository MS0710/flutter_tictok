import 'package:flutter/material.dart';

class MyInfoPage extends StatefulWidget {
  const MyInfoPage({super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            SizedBox(width: 20,),
          ],
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50),),
                  child: Image.asset(
                    "assets/images/cat.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "@abc123",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    numText(9, "關注中",),
                    Container(
                      height: 20,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 00,),
                      color: const Color(0xffF5F5F6),
                    ),
                    numText(8, "粉絲",),
                    Container(
                      height: 20,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 00,),
                      color: const Color(0xffF5F5F6),
                    ),
                    numText(0, "讚",),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F3),
                        borderRadius: BorderRadius.all(Radius.circular(8),),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "編輯個人資料",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F3),
                        borderRadius: BorderRadius.all(Radius.circular(8),),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "分享個人資料",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5,),
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F3),
                        borderRadius: BorderRadius.all(Radius.circular(8),),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.person_add_alt_1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Container(
                  height: 45,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1F1F3),
                    borderRadius: BorderRadius.all(Radius.circular(8),),
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),

                      Text(
                        "分享個人資料",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10,),
                      decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black,width: 1),
                          )
                      ),
                      child: Image.asset(
                        "assets/images/tictok_icon1.png",
                        width: 35,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const Icon(
                      Icons.bookmark_border,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Image.asset(
                  "assets/images/picture.png",
                  color: Colors.grey,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(height: 10,),
                const Text(
                  "分享您最近錄製的有趣影片",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5),),
                  ),
                  child: const Text(
                    "上傳",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget numText(int num,String label){
    return SizedBox(
      width: MediaQuery.of(context).size.width/5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$num",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xff5C5C5C),
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
