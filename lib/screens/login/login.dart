import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/covi_bar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CoviBar(),
        const BaseAppBar(title: "Área Pública"),
        Container(
          //Todo Cambiar por una imagen
          height: hJM(25),
          color: CommonTheme.backgroundColor,
        ),
         const LoginBanner(
          text: "QUIÉNES SOMOS",
          elevation: 0,
        ),
         const LoginBanner(
          text: "QUIERE SER SOCIO",
          elevation: 10,
        ),
         const LoginBanner(
          text: "ÁREA PRIVADA",
          elevation: 20,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(wJM(4)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.green800,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(0, 0), 
                ),
              ],
            ),
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.mail, color: CommonTheme.backgroundColor),
                Icon(Icons.mail, color: CommonTheme.backgroundColor),
                Icon(Icons.mail, color: CommonTheme.backgroundColor),
              ],
            ),
          ),
        ),
        Container(
          color: AppColors.olive2,
          height: hJM(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("COVIRAN S.C.A", style: CommonTheme.bodyLarge.copyWith(color: CommonTheme.backgroundColor)),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: CommonTheme.backgroundColor,
                  ),
                  Text("901 116 955", style: CommonTheme.bodyLarge.copyWith(color: CommonTheme.backgroundColor)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class LoginBanner extends StatelessWidget {
  final String text;
  final double elevation;

  const LoginBanner({super.key, required this.text, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: elevation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(0, -10),
              ),
            ],
            color: CommonTheme.primaryColor,
          ),
          child: Center(
            child: Text(
              text,
              style: CommonTheme.titleLarge.copyWith(fontWeight: FontWeight.normal, color: CommonTheme.backgroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
