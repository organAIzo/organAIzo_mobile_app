import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _searchField(),
          const Column(
            children: [
              Text('Category', 
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),)
            ],
          )
        ],
      ),
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