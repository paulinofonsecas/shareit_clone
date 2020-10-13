import 'package:flutter/material.dart';

import 'componentes/custom_icon_bloc.dart';
import 'componentes/custom_icon_button.dart';
import 'componentes/custom_rounded_icon_button.dart';
import 'componentes/video_pane.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: _buildSeccaoPrincipal(context),
        ),
      ),
    );
  }

  Column _buildSeccaoPrincipal(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopPanel(),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to SHAREit !',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Let's discover and share unlimited joy",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            VideoPane(img: 'img.jpg'),
            VideoPane(img: 'cerebro.jpg'),
          ],
        ),
        SizedBox(height: 15),
        Text('Sem mais'),
      ],
    );
  }

  Widget _buildTopPanel() {
    return Wrap(
      spacing: 5,
      runSpacing: 10,
      children: [
        CustomIconButtom(
          onTap: () {},
          icon: Icons.send,
          title: 'Enviar',
        ),
        CustomIconButtom(
          onTap: () {},
          icon: Icons.arrow_circle_down_outlined,
          title: 'Receber',
        ),
        CustomIconButtom(
          onTap: () {},
          icon: Icons.snippet_folder,
          notification: List.generate(85, (index) => index),
          title: 'Local',
        ),
        CustomRoundedIconButton(
          onTap: () {},
          icon: Icons.insert_invitation_rounded,
          title: 'Convidar',
        ),
      ],
    );
  }
}
