import 'package:flutter_hackathon_2022/view/award/model/award_enum.dart';

class Award {
  final String name;
  final String image;
  final int price;
  final AwardEnum type;

  Award(this.type, this.name, this.image, this.price);
}
