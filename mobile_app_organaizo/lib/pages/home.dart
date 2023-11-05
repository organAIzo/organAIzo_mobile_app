import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/models/category_model.dart';
import 'package:mobile_app_organaizo/models/recommendation_model.dart';


class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<RecommendationModel> recommended = [];

  void getInitialInfo() {
    categories = CategoryModel.getCategories();
    recommended = RecommendationModel.getRecommendation();
  }

  @override
  Widget build(BuildContext context) {
    getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(height:40,),
          category(),
          const SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left:20),
                child: Text('Recommendation\n to Dos',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
              ),
              const SizedBox(height: 15,),
              Container(color: Colors.white,
              height: 240,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 210, 
                    decoration: BoxDecoration(
                      color: recommended[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        recommended[index].icon,
                        Text(
                          recommended[index].name, 
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )
                        )

                      ],
                    ),
                  );
                },
                 separatorBuilder: (context, index) => const SizedBox(width: 25,),
                  itemCount: recommended.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  ),
                  )
              

            ],

          )
        ],
      ),
    );
  }

  Column category() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Category', 
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 20, 
                  right: 20
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 25,),
                itemBuilder: (context, index){
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                        )
                      ],
                    ),
                );
              })
            )
          ],
        );
  }

  Container _searchField() {
    return Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20), 
          decoration: BoxDecoration(
            boxShadow: [ BoxShadow(color: const Color(0xff1D1617).withOpacity(0.11),blurRadius: 40, spreadRadius: 0.0)]), 
            child: TextField(
              decoration: InputDecoration(
                filled: true, fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(12),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Color(0xffDDDADA),
                  fontSize: 14
                ),
                prefixIcon: const Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.search)) ,
                suffixIcon: 
                 const SizedBox(
                  width: 100,
                   child: IntrinsicHeight(
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                        VerticalDivider(
                          color:Colors.black,
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.1,
                        ),
                         Padding(
                          padding: EdgeInsets.all(8.0), child: Icon(Icons.filter_alt)),
                       ],
                     ),
                   ),
                 ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )),));
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('organAIzo', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(onTap: () {
        
      },
      child: Container(
        margin:const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: const Icon(Icons.arrow_back, color: Colors.white,),
      )),
      actions: [
        GestureDetector(onTap: () {           
        },
        child: Container(
        margin:const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        width: 37,
        child: const Icon(Icons.menu, color: Colors.white,),
      )),
      ],

    );
  }
}