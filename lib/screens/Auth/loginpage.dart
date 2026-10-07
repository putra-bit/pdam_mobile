import 'package:flutter/material.dart';
import 'package:pdam_mobile/screens/core/theme/appcolors.dart';
import 'package:pdam_mobile/screens/core/widgets/apptextfield.dart';

class Loginpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //welcome
              Text("Selamat Datang!",style: TextStyle(
                fontSize: 24,
                color: AppColors.text
              ),),
              SizedBox(height: 5,),
              Text("Senang melihat Anda kembali.",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.text
              ),
              ),
              SizedBox(height: 25,),
              //TextField Area
              Apptextfield(
                label: "Email",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 15,),
              Apptextfield(
                label: "Password",
                prefixIcon: Icons.lock,
                obscureText: !isVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  }
                  , icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off) ),
                )
            ],
          ),
      )),
    );
  }
}