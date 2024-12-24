


import 'package:apinwes_demo/catgeroy_screen.dart';
import 'package:apinwes_demo/news.bloc.dart';
import 'package:apinwes_demo/news_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



enum FilterList { bbcNews, aryNews , independent , reuters, cnn, alJazeera}
FilterList? selectedMenu ;

class HomeAppBarWidget extends StatelessWidget {
   HomeAppBarWidget({Key? key}) : super(key: key);
  String name = 'bbc-news' ;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: IconButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen()));
        },
        icon: Icon(Icons.newspaper)
      ),
      title: Text('News' , style: TextStyle(fontSize: 24 ,
       fontWeight: FontWeight.bold,color: Colors.blue),),
      actions: [
        PopupMenuButton<FilterList>(
            initialValue: selectedMenu,
            icon: Icon(Icons.more_vert , color: Colors.black,),
            onSelected: (FilterList item){

              if(FilterList.bbcNews.name == item.name){
                name = 'bbc-news' ;
              }
              if(FilterList.aryNews.name ==item.name){
                name  = 'ary-news';
              }

              if(FilterList.alJazeera.name ==item.name){
                name  = 'al-jazeera-english';
              }


              context.read<NewsBloc>()..add(FetchNewsChannelHeadlines(name));


            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<FilterList>> [
              PopupMenuItem<FilterList>(
                value: FilterList.bbcNews ,
                child: Text('BBC News'),
              ),
              PopupMenuItem<FilterList>(
                value: FilterList.aryNews ,
                child: Text('Ary News'),
              ),
              PopupMenuItem<FilterList>(
                value: FilterList.alJazeera ,
                child: Text('Al-Jazeera News'),
              ),
            ]
        )
      ],
    );
  }
}