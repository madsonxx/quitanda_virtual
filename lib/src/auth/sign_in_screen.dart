import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quitanda_virtual/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 32,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Email
                const CustomTextField(
                  label: 'email',
                  icon: Icons.email,
                ),
                //Senha
                const CustomTextField(
                  label: 'senha',
                  icon: Icons.lock,
                  isSecret: true,
                ),
                //Botão Entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                //Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
                //Divisor Ou
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2.0,
                        ),
                      ),
                    ],
                  ),
                ),
                //Botão de Novo usuário
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
