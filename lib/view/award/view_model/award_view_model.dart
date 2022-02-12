import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/view/award/model/award_enum.dart';

import '../model/award_model.dart';

class AwardViewModel {
//TODO: buraya her birinin isimleri içeren 10 tane liste eklenecek

  AwardViewModel(this.type);

  final AwardEnum type;
  List<Award> _bookAward = [];
  List<Award> _electronicAward = [];
  List<Award> _ticketAward = [];
  List<Award> _foodAward = [];



  List<Award> get generateAwardList {
    switch (type) {
      case AwardEnum.book:
        return _bookAward = List.generate(
            10,
            (index) => Award(AwardEnum.book, 'Monte Kristo Kontu',
                'kitap1'.toJpg, index * 100));

      case AwardEnum.electronic:
      return  _electronicAward = List.generate(
            10,
            (index) => Award(AwardEnum.electronic, 'Iphone S11',
                'telephone'.toJpg, index * 100));
  
      case AwardEnum.ticket:
     return   _ticketAward = List.generate(
            10,
            (index) => Award(
                AwardEnum.ticket, 'Duman Konseri', 'ticket'.toJpg, index * 10));
  

      default:
     return   _foodAward = List.generate(
            10,
            (index) => Award(
                AwardEnum.food, 'Avakado', 'vegetables'.toJpg, index * 10));
        break;
    }
  }
}
