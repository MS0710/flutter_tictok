import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tictok2/pages/main_page.dart';

class FilmDetailPage extends StatefulWidget {
  const FilmDetailPage({super.key});

  @override
  State<FilmDetailPage> createState() => _FilmDetailPageState();
}

class _FilmDetailPageState extends State<FilmDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("發佈人名稱",style: TextStyle(color: Colors.black),),
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context){
              return const MainPage();
            }));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/bell_ring.png",
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10,),
          Image.asset(
            "assets/images/right_arrow_outline.png",
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10,),
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
                  numText("65", "關注中",),
                  Container(
                    height: 20,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 00,),
                    color: const Color(0xffF5F5F6),
                  ),
                  numText("1.1萬", "粉絲",),
                  Container(
                    height: 20,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 00,),
                    color: const Color(0xffF5F5F6),
                  ),
                  numText("17.4萬", "讚",),

                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                    decoration: const BoxDecoration(
                      color: Color(0xffFE2B54),
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "關注",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    width: 100,
                    height: 45,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                    decoration: const BoxDecoration(
                      color: Color(0xffF1F1F3),
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "訊息",
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
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Center(
                child: Text(
                  "土生土長台灣人，大陸生活對比人。",
                  style: TextStyle(color: Colors.black, fontSize: 15,),
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
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
              ),
              const SizedBox(height: 10,),
              filmGridView(),

            ],
          ),
        ],
      ),
    );
  }

  Widget numText(String num,String label){
    return SizedBox(
      width: MediaQuery.of(context).size.width/5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$num",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xff5C5C5C),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
  Widget filmGridView(){
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, //每行三列
        childAspectRatio: 0.6,
      ),
      itemCount: 14,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.white,width: 1),
          ),
          child: Center(
            child: Text("作品$index",style: const TextStyle(color: Colors.white),),
          ),
        );
      },
    );
  }
}
