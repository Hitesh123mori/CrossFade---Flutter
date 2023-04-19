// import 'dart:async' ;


import 'package:flutter/material.dart' ;

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool isFirst = true ;

  @override
  // void initState() {
  //
  //   super.initState();

  //   Timer(Duration(seconds: 5),(){
  //     reload() ;
  //   }) ;
  // }

  void reload()
  {
    setState(() {
      if(isFirst  == true)
      {
        isFirst = false ;
      }
      else
      {
        isFirst = true ;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cross fad"),
        ),
        body: Center(
          child: InkWell(
            onTap: (){
              reload() ;

            },
            child: AnimatedCrossFade(
                duration: Duration(seconds: 5),
              firstChild:  Container(color: Colors.red,width: 100,height: 100,),
              secondChild:CircleAvatar(backgroundColor: Colors.blue,radius: 50,) ,
              crossFadeState: isFirst  ? CrossFadeState.showFirst :CrossFadeState.showSecond
            ),
          ),
        ),
      ),
    );
  }
}
