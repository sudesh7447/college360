import 'package:college360/widgets/popularColleges.dart';
import 'package:flutter/material.dart';

class homePageScreen extends StatelessWidget {
  const homePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(
                "Popular Colleges",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),

              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return       PopularColleges(imgUrl: 'https://images.shiksha.com/mediadata/images/1544423627php0wcWHR.png', rating: 5 , desc: 'mandir yahi banaenge', price: '290', title: 'Walchand  , Sangli');

                  })
            ],
          ),
        ),
      ),
    );
  }
}
