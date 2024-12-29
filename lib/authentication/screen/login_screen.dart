import 'package:cookrecep/authentication/screen/register_screen.dart';
import 'package:cookrecep/screens/home_navigator_bar/home_module.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900]!,
            Colors.orange[800]!,
            Colors.orange[400]!,
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Inicio de Sesión",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Bienvenido de nuevo",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Correo electrónico",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.orange[900],
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.orange[900]),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey[200]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.orange[900]!,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 20),
                            // Campo de contraseña
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Contraseña",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.orange[900],
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.orange[900]),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey[200]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.orange[900]!,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "¿Olvidaste tu contraseña?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeModule(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[900],
                          ),
                          child: Center(
                            child: Text(
                              "Iniciar Sesión",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "- O -",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[900],
                          ),
                          child: Center(
                            child: Text(
                              "Registrarse",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Continuar con Google",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Image.asset('assets/logos/logo_google.png'),
                          onPressed: () {
                            print('Google icon button clicked');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
