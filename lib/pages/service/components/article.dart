import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height; 
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      backgroundColor: Color(0xFFFEF1D4),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment(-1.0, -0.6),
                children: [
                  Container(
                    height: 230,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://s3img.city.sina.com.cn/xiancheng/common/thumbnail/0/21b3f53872990991ba229acb4dc4ffc5.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.navigate_before, color: Colors.white, size: 36.0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ),
                ]
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                      child: Text('Lovely Pet', style: TextStyle(fontSize: 26)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0, bottom: 24.0),
                          child: Text('123 Avenue Street, City', style: TextStyle(fontSize: 16)),
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(left: 40.0, bottom: 8.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                            onPressed: () {},
                            color: Color(0xFFf9c446),
                            child: Text('Book', style: TextStyle(color: Colors.white, fontSize: 16),),
                          ),
                        )
                      ]
                    ),
                  ]
                )
              ),
              Card(
                margin: EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Hours', style: TextStyle(fontSize: 20.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Monday-Friday 9AM-7PM*', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Saturdays 9AM to 6PM*', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Sundays 10AM to 5PM*', style: TextStyle(fontSize: 16.0),)
                      )
                    ],
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Service', style: TextStyle(fontSize: 20.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Pet Grooming', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Pet sitting and walking', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Pet Spa and Bathing option', style: TextStyle(fontSize: 16.0),)
                      )
                    ],
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          children: [
                            Container(
                              child: Text('Service', style: TextStyle(fontSize: 20.0),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 240.0),
                              child: Icon(Icons.search, size: 32.0, color: Color(0xFF646465)),
                            )
                          ]
                        )
                    ],
                  ),
                )
              ),
            ]
          )
        )
      )
    );
  }
}

