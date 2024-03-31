import 'package:flutter/material.dart';
import 'package:iedu/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Color.fromARGB(255, 191, 223, 237)),
      body: SafeArea(
        child:  Center(
          child: Column(
            children: [
              Icon(Icons.abc,
              size: 200,),

              Text('Es hora de empezar',
              style: TextStyle(fontSize: 30),),

              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Por favor, ingresa los detailes de tu cuenta para poder iniciar',
                    textAlign: TextAlign.center,),
                  ],
                ),
              ),
              
              SizedBox(height: 25,),

              MyTextField(
                controller: usernameController,
                hintText: 'correo electronico',
                obscureText: false,
                suffixIcon: null,
                fillColor: Colors.white,
                textColor: Colors.grey,
              ),

             SizedBox(height: 15,),

              MyTextField(
                controller: passwordController,
                hintText: 'PIN',
                obscureText: true,
                suffixIcon: Icon(Icons. visibility_off),
                fillColor: Colors.white,
                textColor: Colors.grey,
              ),

              SizedBox(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Has olvidado tu PIN?'),
                  TextButton(
                onPressed: (){}, 
              child: Text('Recuperalo aqui',
              style:TextStyle(color:Colors.deepOrange)))
                ],
              ),

              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Aun no tienes cuenta?'),
                  TextButton(
                onPressed: (){}, 
              child: Text('Registrate aqui',
              style:TextStyle(color:Colors.deepOrange)))
                ],
              ),
              
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: (Colors.white),
                  backgroundColor: (Color.fromARGB(255, 9, 85, 148)),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Set the radius to 0 for a rectangular shape
              ),
                elevation: 1.0,
                textStyle: const TextStyle(color: Colors.white),
                minimumSize: Size(300, 40),
              ),
                child: const Text('Inicia Sesion'),
              )

          
            ],
          ),
        ),
      ),
    );
  }
}
