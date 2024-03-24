import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvmm_sample/view_models/cryptolisg_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key})

  @override
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  CryptoListViewModel cryptoListViewModel= GetIt.I.get<CryptoListViewModel>();

  @override
  void initState(){
    cryptoListViewModel.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:ChangeNotifierProvider(
        create:(context)=> cryptoListViewmodel,
        child:Consumer<CryptoListViewModel>(
          builder:(context,value,child){
            return getScaffold(value);
          },
        ),
      ),
    );
  }
}

Scaffold getScaffold(CryptoListViewModel cryptoListViewModel){
  return Scaffold(
    body:ListView.builder(
      itemBuilder: (context,index){
        return Text(cryptoListViewModel.cryptoList[index].name);
      },
      itemCount: cryptoListViewModel.cryptoList.length,
    ),
  );
}
