import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/view/award/view_model/award_view_model.dart';
import 'package:kartal/kartal.dart';

import '../model/award_enum.dart';
import '../model/award_model.dart';

class AwardViewDetail extends StatefulWidget {
  const AwardViewDetail({Key? key, required this.awardType}) : super(key: key);

  final AwardEnum awardType;

  @override
  State<AwardViewDetail> createState() => _AwardViewDetailState();
}

class _AwardViewDetailState extends State<AwardViewDetail> {
  late final AwardViewModel _awardViewModel;
  List<Award> _awardList = [];

  @override
  void initState() {
    super.initState();
    _awardViewModel = AwardViewModel(widget.awardType);
    _awardList = _awardViewModel.generateAwardList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Padding(
          padding: context.paddingLow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ödüller',
                style: TextStyle(fontSize: 40, color: AppColors.secondaryColor),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: _awardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shadowColor: Colors.white,
                        child: Center(
                            child: Padding(
                          padding: context.paddingLow,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(_awardList[index].image)),
                              Text(
                                _awardList[index].name,
                                style: TextStyle(
                                    color: AppColors.accentColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${_awardList[index].price}' ' Puan',
                                style: TextStyle(
                                    color: AppColors.accentColor,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
