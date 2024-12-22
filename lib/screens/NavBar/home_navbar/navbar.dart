import 'package:flutter/material.dart';
import 'package:cookrecep/screens/NavBar/slider_menu/archive_drawer/archive.dart';
import 'package:cookrecep/screens/NavBar/slider_menu/configure_drawer/configurePage.dart';
import 'package:cookrecep/screens/NavBar/slider_menu/help_drawer/help.dart';
import 'package:cookrecep/screens/bottom_navigator_bar/profile_page/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            buildListTile(
                context, Icons.account_circle, 'Perfil', const ProfilePage()),
            buildListTile(context, Icons.message_rounded, 'Mensajes',
                const ArchivePage()),
            buildListTile(context, Icons.work_history_rounded, 'Archivados',
                const HelpPage()),
            const Divider(
              height: 30,
              color: Color.fromARGB(255, 65, 111, 223),
            ),
            buildListTile(
                context, Icons.help_rounded, 'Ayuda', const ConfigurePage()),
            buildListTile(context, Icons.logout_rounded, 'Salir', null,
                onTap: () {
              // Aquí puedes agregar la funcionalidad para cerrar sesión
            }),
          ],
        ),
      ),
    );
  }
}

ListTile buildListTile(
    BuildContext context, IconData icon, String title, Widget? page,
    {Function()? onTap}) {
  return ListTile(
    leading: getIconWithShader(icon),
    title: buildTextStyle(title),
    onTap: onTap ??
        () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          }
        },
  );
}

Text buildTextStyle(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black),
  );
}

ShaderMask getIconWithShader(IconData icon) {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [
          Colors.orange[900]!,
          Colors.orange[800]!,
          Colors.orange[400]!,
        ],
      ).createShader(bounds);
    },
    child: Icon(icon, size: 30, color: Colors.white),
  );
}
