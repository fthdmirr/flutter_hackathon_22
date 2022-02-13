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

  final List<String> bookNames = ['Monte Kristo Kontu', 'Kızıl Nehirler'];
  final List<String> electronicNames = ['Iphone 4'];
  final List<String> ticketNames = ['Duman Konseri'];
  final List<String> foodsNames = ['Avokado'];

  List<Award> get generateAwardList {
    switch (type) {
      case AwardEnum.book:
        return _bookAward = List.generate(
            10,
            (index) => Award(
                AwardEnum.book,
                DummyDatas.bookNames[index],
                //TODO: kitapindex yapılacak
                'kitap1'.toJpg,
                index * 100));

      case AwardEnum.electronic:
        return _electronicAward = List.generate(
            10,
            (index) => Award(
                AwardEnum.electronic,
                DummyDatas.electronicNames[index],
                'telephone'.toJpg,
                index * 100));

      case AwardEnum.ticket:
        return _ticketAward = List.generate(
            10,
            (index) => Award(AwardEnum.ticket, DummyDatas.ticketNames[index],
                'ticket'.toJpg, index * 10));

      default:
        return _foodAward = List.generate(
            10,
            (index) => Award(AwardEnum.food, DummyDatas.foodsNames[index],
                'vegetables'.toJpg, index * 10));
    }
  }
}
