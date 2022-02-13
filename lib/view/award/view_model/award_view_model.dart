import '../../../core/extension/string_extension.dart';
import '../../../utils/constants/dummy_data.dart';
import '../model/award_enum.dart';

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
             DummyDatas.bookNames.length,
            (index) => Award(
                AwardEnum.book,
                DummyDatas.bookNames[index],
                //TODO: kitapindex yapılacak
                'books/$index'.toJpg,
                index * 100));

      case AwardEnum.electronic:
        return _electronicAward = List.generate(
            DummyDatas.electronicNames.length,
            (index) => Award(
                AwardEnum.electronic,
                DummyDatas.electronicNames[index],
                'telephone'.toJpg,
                index * 100));

      case AwardEnum.ticket:
        return _ticketAward = List.generate(
            DummyDatas.ticketNames.length,
            (index) => Award(AwardEnum.ticket, DummyDatas.ticketNames[index],
                'ticket'.toJpg, index * 10));

      default:
        return _foodAward = List.generate(
             DummyDatas.foodsNames.length,
            (index) => Award(AwardEnum.food, DummyDatas.foodsNames[index],
                'foods/$index'.toJpg, index * 15));
    }
  }
}
