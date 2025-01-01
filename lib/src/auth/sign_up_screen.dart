import "package:flutter/material.dart";
import "package:mask_text_input_formatter/mask_text_input_formatter.dart";
import "package:quitanda/src/auth/components/custom_text_field.dart";
import "package:quitanda/src/config/custom_colors.dart";

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: CustomColors.customSwatchColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 10,
                  child: SafeArea(
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios,
                            color: Colors.white,))),
                ),
                Column(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Cadastro',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 40),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(45))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const CustomTextField(
                            icon: Icons.email,
                            label: "Email",
                          ),
                          const CustomTextField(
                              icon: Icons.lock, label: "Senha", isSecret: true),
                          const CustomTextField(
                            icon: Icons.person,
                            label: "Nome",
                          ),
                         CustomTextField(
                          inputFormatters: [phoneFormatter],
                            icon: Icons.phone,
                            label: "Celular",
                          ),
                           CustomTextField(
                            inputFormatters: [cpfFormatter],
                            icon: Icons.file_copy,
                            label: "CPF",
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18))),
                                onPressed: () {},
                                child: Text(
                                  'Cadastrar Usuário',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
