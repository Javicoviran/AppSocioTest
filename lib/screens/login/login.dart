import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/login/sig_in.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Área Pública", back: false,),
          child: Column(
            children: [
              Container(
                height: hJM(25),
                width: double.infinity,
                color: CommonTheme.backgroundColor,
                child: Image.asset(
                  'assets/images/truck_left.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const LoginBanner(
                text: "QUIÉNES SOMOS",
              ),
              const LoginBanner(
                text: "QUIERE SER SOCIO",
              ),
              const LoginBanner(
                text: "ÁREA PRIVADA",
                goTo: SignIn(),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(wJM(4)),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.phone, color: AppColors.lightGreen600),
                      Icon(Icons.mail, color: AppColors.lightGreen600),
                      Icon(Icons.social_distance, color: AppColors.lightGreen600),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: hJM(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("COVIRAN S.C.A", style: CommonTheme.bodyLarge),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                        ),
                        Text("901 116 955", style: CommonTheme.bodyLarge),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginBanner extends StatelessWidget {
  final String text;
  final Widget? goTo;

  const LoginBanner({super.key, required this.text, this.goTo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (goTo != null) Navigator.push(context, MaterialPageRoute(builder: (context) => goTo!));
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(wJM(4)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.lightGreen500,
                AppColors.lightGreen800,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: CommonTheme.titleLarge.copyWith(fontWeight: FontWeight.normal, color: CommonTheme.darkButtonTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
