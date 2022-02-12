import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../widget/custom_text_form_field.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  TextEditingController test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kayıt Ol',
                  style: context.textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              context.emptySizedHeightBoxHigh,
              CustomTextFormField(
                label: 'İsim',
                icon: Icon(Icons.people),
                textController: test,
              ),
              context.emptySizedHeightBoxLow3x,
              CustomTextFormField(
                label: 'Lokasyon',
                icon: Icon(Icons.people),
                textController: test,
              ),
              context.emptySizedHeightBoxLow3x,
              CustomTextFormField(
                label: 'Kenidinden Bahset',
                maxLines: 4,
                icon: Icon(Icons.people),
                textController: test,
              ),
              context.emptySizedHeightBoxHigh,
              Center(
                child: FloatingActionButton.extended(
                    onPressed: () {}, label: Text('Bitti')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
