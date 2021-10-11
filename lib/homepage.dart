import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Horizontal And Vertical Listview"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text("Card $index"),
                          ),
                          color: Colors.green,
                        )),
              ),
              Flexible(
                  child: ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ListTile(
                            title: Text("List $index"),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
