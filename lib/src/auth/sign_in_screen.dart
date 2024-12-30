import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/components/custom_text_field.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: CustomColors.customSwatchColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            
                      //Nome do App
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 40,
                          ),
                          children: [
                           const TextSpan(
                              text: 'Green',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            TextSpan(
                              text: 'grocer',
                              style:TextStyle(
                                color: CustomColors.customContrastColor,
                              )
                            )
                          ]
                         )
                      ),
                     
                     //Categorias
                      SizedBox(
                        height: 30,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 25
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,  
                            pause: Duration.zero,
                            animatedTexts: [
                              FadeAnimatedText('Frutas'),
                              FadeAnimatedText('Verduras'),
                              FadeAnimatedText('Legumes'),
                              FadeAnimatedText('Carnes'),
                              FadeAnimatedText('Cereais'),
                              FadeAnimatedText('Laticínios'),
                          ]),
                        ),
                      )
                    ],
                  )),
            
                //Formulario
            
                Container(
                              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
                              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // usa todo o espaço no eixo x
                children: [
                  CustomTextField(icon: Icons.email, label: 'Email'),
                  CustomTextField(
                      icon: Icons.lock, label: 'Senha', isSecret: true),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        onPressed: () {},
                        child: Text('Entrar', style: TextStyle(fontSize: 18))),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Esqueceu a senha?',
                            style: TextStyle(color: CustomColors.customContrastColor))),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Ou")),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 1,
                        ),
                      )
                    ],
                  ),
                
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:10),
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                       
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                          ),
                           side: BorderSide(
                            width: 2,
                            color: Colors.green
                           ) 
                        ),
                        onPressed: (){}, 
                        child: Text('Criar Conta', style: TextStyle(fontSize: 18))),
                    ),
                  ),
                
                ],
                              ),
                            ),
              ],
            ),
          ),
        ));
  }
}
