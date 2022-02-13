part of '../register_view.dart';
class RegisterViewColumn extends StatelessWidget {
  const RegisterViewColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.emptySizedHeightBoxHigh,
          textRegisterWidget(context),
          context.emptySizedHeightBoxHigh,
          TextFormField(
            controller: context.watch<RegisterViewModel>().nameController,
            decoration: InputDecoration(label: Text('İsim')),
          ),
          context.emptySizedHeightBoxLow3x,
          TextFormField(
              controller: context.watch<RegisterViewModel>().locationController,
              decoration: InputDecoration(label: Text('Lokasyon'))),
          context.emptySizedHeightBoxLow3x,
          TextFormField(
              maxLines: 4,
              controller: context.watch<RegisterViewModel>().bioController,
              decoration: InputDecoration(
                  label: Text('Biyografi'), hintText: 'Kendini bahset')),
          context.emptySizedHeightBoxLow3x,
          _selectGenderWidget(),
          context.emptySizedHeightBoxHigh,
          _registerButtonWidget(context),
        ],
      ),
    );
  }

  Text textRegisterWidget(BuildContext context) {
    return Text('Kayıt Ol',
            style: context.textTheme.headline3
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black));
  }

  Consumer<RegisterViewModel> _selectGenderWidget() {
    return Consumer<RegisterViewModel>(
      builder: (context, viewModel, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Cinsiyet: '),
          context.emptySizedWidthBoxLow,
          AnimatedContainer(
            duration: context.durationLow,
            child: GestureDetector(
                onTap: () => viewModel.changeGender(ProfileImageEnum.man),
                child: Image.asset(
                  'man'.toJpg,
                  height:
                      viewModel.manDismissed ? 0 : context.dynamicHeight(0.06),
                )),
          ),
          context.emptySizedWidthBoxLow,
          GestureDetector(
              onTap: () => viewModel.changeGender(ProfileImageEnum.woman),
              child: Image.asset(
                'woman'.toJpg,
                height:
                    viewModel.womanDismised ? 0 : context.dynamicHeight(0.06),
              )),
        ],
      ),
    );
  }

  Center _registerButtonWidget(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text('Tamam'),
      onPressed: () => context.read<RegisterViewModel>().createUser(context),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.secondaryColor),
          foregroundColor: MaterialStateProperty.all(AppColors.accentColor)),
    ));
  }
}
