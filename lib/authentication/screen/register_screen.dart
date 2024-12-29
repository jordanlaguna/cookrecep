import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    "Registrarse",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("¡Bienvenido!",
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
                      topRight: Radius.circular(60)),
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
                            // Campo de Nombre
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Nombre",
                                prefixIcon: Icon(
                                  Icons.person,
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
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(height: 20),
                            // Campo de Apellidos
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Apellidos",
                                prefixIcon: Icon(
                                  Icons.person_outline,
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
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(height: 20),
                            // Campo de Correo electrónico
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
                            // Campo de Contraseña
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
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Aquí puedes añadir la lógica para registrar al usuario
                          print("Usuario registrado");
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
                        height: 30,
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
