import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;
  final String image;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.color1,
    required this.color2,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          //brightness: Brightness.light,
        ),
      ),
      child: SliverAppBar(
        expandedHeight: 105,
        floating: false,
        pinned: true,
        backgroundColor: color1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: FlexibleSpaceBar(
          title: Text(title),
          centerTitle: true,
          background: Container(
            height: 105,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Opacity(
                  opacity: 0.85,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color1,
                          color2,
                        ],
                        stops: [0, 1],
                        begin: Alignment(-1.00, 0.00),
                        end: Alignment(1.00, -0.00),
                        // angle: 90,
                        // scale: undefined,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0c000000),
                          offset: Offset(0, 10),
                          blurRadius: 33,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
