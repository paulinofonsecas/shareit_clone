import 'package:flutter/material.dart';
import 'dart:math';

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  double _defaultPadding = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.add_alert),
                  onPressed: () {},
                ),
              ),
              _buildUserSection(),
              SizedBox(height: _defaultPadding),
              _buildActionSecttion(),
              SizedBox(height: _defaultPadding / 5),
              _buildFamiliaShareit(),
              SizedBox(height: _defaultPadding / 5),
              _buildAcoes(),
              SizedBox(height: 5),
              _bulidDefinicoesSecttion()
            ],
          ),
        ),
      ),
    );
  }

  Pane _buildAcoes() {
    return Pane(
      defaultPadding: _defaultPadding,
      horizontalPadding: 20,
      child: Column(
        children: [
          SettingsItem(
            defaultPadding: _defaultPadding,
            icon: Icon(Icons.tv),
            title: 'Idioma',
          ),
          SettingsItem(
            defaultPadding: _defaultPadding,
            icon: Icon(Icons.star_border),
            title: 'Siga-nos',
          ),
          SettingsItem(
            defaultPadding: _defaultPadding,
            icon: Icon(Icons.comment_bank),
            title: 'Comentários',
          ),
          SettingsItem(
            defaultPadding: _defaultPadding,
            icon: Icon(Icons.upload_rounded),
            title: 'Verificar a existência de noas versões',
          ),
        ],
      ),
    );
  }

  Pane _bulidDefinicoesSecttion() {
    return Pane(
      defaultPadding: _defaultPadding,
      horizontalPadding: 20,
      child: SettingsItem(
        defaultPadding: _defaultPadding,
        icon: Icon(Icons.settings),
        title: 'Definições',
      ),
    );
  }

  Container _buildUserSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                    ),
                  ),
                  CustomIconCreate(),
                ],
              ),
              SizedBox(width: _defaultPadding),
              CustomTitle(),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(90),
            ),
            child: Center(
              child: Text(
                'Iniciar Sessão',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionSecttion() {
    return Pane(
      defaultPadding: _defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomNamedIcon(icon: Icons.history, title: 'Histórico'),
          CustomNamedIcon(icon: Icons.favorite, title: 'Gostar'),
          CustomNamedIcon(icon: Icons.file_download, title: 'Transferir'),
        ],
      ),
    );
  }

  Widget _buildFamiliaShareit() {
    return Pane(
      defaultPadding: _defaultPadding,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomNamedIcon(
              icon: Icons.android,
              color: Colors.greenAccent,
              title: 'CLEANit',
            ),
            CustomNamedIcon(
              icon: Icons.android,
              color: Colors.blue,
              title: 'LOCKit',
            ),
            CustomNamedIcon(
              icon: Icons.android,
              color: Colors.lightBlue,
              title: 'CLONE',
            ),
            CustomNamedIcon(
              icon: Icons.android,
              color: Colors.orange,
              title: 'LISTENit',
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    Key key,
    @required double defaultPadding,
    @required this.icon,
    @required this.title,
  })  : _defaultPadding = defaultPadding,
        super(key: key);

  final double _defaultPadding;
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: _defaultPadding / 2),
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class Pane extends StatelessWidget {
  const Pane({
    Key key,
    @required double defaultPadding,
    @required this.child,
    this.horizontalPadding,
  })  : _defaultPadding = defaultPadding,
        super(key: key);

  final double horizontalPadding;
  final double _defaultPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(_defaultPadding / 2),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? _defaultPadding * 2,
        vertical: _defaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
          ),
        ],
      ),
      child: child,
    );
  }
}

class CustomNamedIcon extends StatelessWidget {
  const CustomNamedIcon({
    Key key,
    @required this.icon,
    @required this.title,
    this.color,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: color ?? Colors.blue,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class CustomIconCreate extends StatelessWidget {
  const CustomIconCreate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            Icons.create,
            size: 15,
          ),
        ),
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'SMJ530F',
          style: TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: Colors.deepOrange,
          ),
          child: Center(
            child: Transform.rotate(
              angle: pi / 4,
              child: Icon(
                Icons.airplanemode_active,
                size: 10,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
