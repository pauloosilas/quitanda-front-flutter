import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: const NeverScrollableScrollPhysics(), //não fezer scrool com toque
        controller: pageController,
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.yellow,),
          Container(color: Colors.blue,),
          Container(color: Colors.purple,),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: 'Carrinho'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos'
          ),  
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil'
          )      
      ],),
    );
  }
}