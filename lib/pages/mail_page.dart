import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  List<String> items = ["創作","心想事成","海闊天空","+小工具",];
  double itemsSize = 70;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.person_add_alt_1,
          color: Colors.black,
        ),
        title: const Text(
          "收信夾", style: TextStyle(color: Colors.black,),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...items.map((e) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(itemsSize/2),),
                        child: Image.asset(
                          "assets/images/cat.png",
                          width: itemsSize,
                          height: itemsSize,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(e,style: const TextStyle(color: Colors.black,fontSize: 13,),),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 5,),
                decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                child: const Icon(
                  Icons.people,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("新粉絲人數",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("心想事成 開始關注你。",style: TextStyle(color: Colors.black,fontSize: 16),),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50),),
                ),
                child: const Text("1",style: TextStyle(color: Colors.white,fontSize: 10,),),
              ),
              const SizedBox(width: 20,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 5,),
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                child: Image.asset(
                  "assets/images/bell_ring.png",
                  width: 38,
                  height: 38,
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("活動",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("心想事成 看過您的資料。",style: TextStyle(color: Colors.black,fontSize: 16),),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50),),
                ),
                child: const Text("17",style: TextStyle(color: Colors.white,fontSize: 10,),),
              ),
              const SizedBox(width: 20,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 5,),
                decoration: const BoxDecoration(
                  color: Color(0xff0A0F35),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                child: Image.asset(
                  "assets/images/box.png",
                  width: 38,
                  height: 38,
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("系統通知",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("TikTok: 一起在TikTok上歡慶新年。",style: TextStyle(color: Colors.black,fontSize: 16),),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50),),
                ),
              ),
              const SizedBox(width: 20,),
            ],
          ),

          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10,),
              const Text(
                "推薦帳號",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5,),
              Image.asset(
                "assets/images/exclamation_mark.png",
                width: 15,
                height: 15,
                color: Colors.grey,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 5,),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50),),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.greenAccent,
                  child: Image.asset(
                    "assets/images/telephone.png",
                    width: 38,
                    height: 38,
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("和聯絡人聊天",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("尋找並與好友聊天。",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ],
                ),
              ),

              Container(
                width: 70,
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
                child: const Text("尋找",style: TextStyle(color: Colors.white,fontSize: 13,),),
              ),
              const SizedBox(width: 20,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 5,),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50),),
                child: Image.asset(
                  "assets/images/cat.png",
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("心想事成",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("關注了您。",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ],
                ),
              ),

              Container(
                width: 70,
                padding: const EdgeInsets.symmetric(vertical: 5,),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
                child: const Text("關注對方",style: TextStyle(color: Colors.white,fontSize: 13,),),
              ),
              const SizedBox(width: 20,),
            ],
          ),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}
