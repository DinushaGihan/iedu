import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iedu/components/button.dart';
import 'package:iedu/components/my_textfield.dart';

class RecoverPinState extends StatefulWidget {
  const RecoverPinState({super.key});

  @override
  State<RecoverPinState> createState() => _RecoverPinStateState();
}

class _RecoverPinStateState extends State<RecoverPinState> {

final usernameController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {

  double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 70,
        leadingWidth: 25,
        leading: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top:15.0),
          child: Text('Recuperacion de PIN',
          textAlign: TextAlign.left,),
        ),
        backgroundColor: (const Color.fromARGB(255, 2, 62, 111)),foregroundColor: (Colors.white),
      ),

      body:  SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height:50),
              Icon(Icons.lock,
              size: 100,),
              
              Padding(
                padding: EdgeInsets.only(top:15,left:20.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('No tepreocupe, te ayudaremos a recuperarla, solo ingresa la informacion requeida.',
                    textAlign: TextAlign.center,),
                  ],
              ),
              ),

              SizedBox(height: 35,) ,

              MyTextField(
                controller: usernameController,
                hintText: 'correo electronico',
                obscureText: false,
                suffixIcon: null,
                fillColor:Colors.grey,
                textColor: Colors.white,
                  ),
              


              MyButton(
                button_title: 'Continuar', boxPositionHeight: 0.7,
                 
                 
               )
                  ],

                  
                ),
              
              //  Text('No tepreocupe, te ayudaremos a recuperarla, solo ingresa la informacion requeida.',
              // style: TextStyle(fontSize: 15),),
            
          ),
        ),
    );
  }
}