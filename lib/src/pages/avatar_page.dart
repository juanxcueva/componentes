import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Avatar Page"),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://w1.pngwing.com/pngs/793/504/png-transparent-avatar-icon-ninja-samurai-icon-design-red-smile-circle.png"),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text("SL"),
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: AssetImage("assets/17.1 jar-loading.gif"),
              image: NetworkImage(
                  "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/09/hipertextual-viuda-negra-y-eternos-retrasan-su-estreno-hasta-2021-y-perjudican-calendario-fase-4-universo-marvel-2020843717.jpg?fit=1200%2C675&ssl=1")),
        ));
  }
}
