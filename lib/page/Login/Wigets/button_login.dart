import 'package:flutter/material.dart';
import 'package:stream_games/page/page_main.dart';

class ButtonLogin extends StatelessWidget {

  final AnimationController controller;

  ButtonLogin ({this.controller});

  Widget _builderAnimation(BuildContext context, Widget child){
    return Padding(
      padding: EdgeInsets.only(
        bottom: 40,
      ),
      child: InkWell(
        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage())
    ),
        child: Container(
          width: 300,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.deepOrange,
          borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          child: Text("Sing in",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3,
          ),)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: _builderAnimation,
    );
  }
}
