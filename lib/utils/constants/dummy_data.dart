import '../../view/authentication/register/model/user_model.dart';
import '../../view/home/model/bulletin_model.dart';
import '../../view/home/model/group_model.dart';
import '../enum/image_enum.dart';

class DummyDatas {
  static const List<String> bookNames = [
    'Anna Karenia',
    'The Family Chao',
    'Sapiens',
    '1984',
    'Fahrenheit 451',
    'Heidi',
    'Animal Farm',
    'Notes From The Underground',
    'The Trial',
    'The Little Prince'
  ];

  static const List<String> electronicNames = [
    'Iphone 6',
    'Alarm clock',
    'Coffee maker',
    'Mouse',
    'Electric guitar',
    'Ipod',
    'USB Drive',
    'Torch',
    'Microphone',
    'Game controller'
  ];

  static const List<String> ticketNames = [
    'Duman Konseri',
    'Manga Konseri',
    'Cem Adrian Konseri',
    'Jonas Stark Konseri',
    'Alegria Korosu Konseri',
    'Feridun Düzağaç Konseri',
    'Dünya Kadınlar Günü Konseri',
    'Melek Mosso Konseri',
    'Canan Anderson Konseri',
    'Zakkum Konseri'
  ];

  static const List<String> foodsNames = [
    'Eggs',
    'Orange',
    'Bananas',
    'Almonds',
    'Coconuts',
    'Broccoli',
    'Salmon',
    'Cheese',
    'Yogurt',
    'Green beans'
  ];

  static User user1 = User('Aleyna', 'Ankarada yaşıyorum 18 yaşındayım',
      'Ankara', 250, ProfileImageEnum.woman, []);

  static User user2 = User('Fatih', 'Ankarada yaşıyorum 21 yaşındayım',
      'Ankara', 150, ProfileImageEnum.man, []);

  static User user3 = User('Ali', 'Adanada yaşıyorum 49 yaşındayım', 'Adana',
      30, ProfileImageEnum.man, []);

  static User user4 = User('Mert', 'İzmirde yaşıyorum 20 yaşındayım', 'İzmir',
      350, ProfileImageEnum.man, []);

  static User user5 = User('Leyla', 'İstanbulda yaşıyorum 30 yaşındayım',
      'İstanbul', 100, ProfileImageEnum.woman, []);

  static User user6 = User('Mehmet', 'Eskişehirde yaşıyorum 28 yaşındayım',
      'Eskişehir', 160, ProfileImageEnum.man, []);

  static User user7 = User('Deniz', 'Bursada yaşıyorum 41 yaşındayım', 'Ankara',
      10, ProfileImageEnum.woman, []);

  static User user8 = User('Hasret', 'Ankarada yaşıyorum 21 yaşındayım',
      'Ankara', 170, ProfileImageEnum.man, []);

  static Group group1 =
      Group([user1, user2, user8], 'Kaplumbağalar', '3', 'Zafer Parkı', "25");
  static Group group2 = Group([user3, user4, user7, user5], 'Akşam Sefası', '1',
      'Kelebek Su parkı', "5");
  static Group group3 =
      Group([user5, user6], 'Emekliler', '2', 'Güzelçamlı', "20");
  static Group group4 =
      Group([user7, user8], 'Atletikler', 'group2', 'Kurtuluş Parkı', "40");

  static Bulletin bulletin1 = Bulletin("65000", 'Neşat Ertaş Parkı', user1);
  static Bulletin bulletin2 = Bulletin("10000", 'Kelebeksu Parkı', user8);
  static Bulletin bulletin3 =
      Bulletin("10000", 'Atatürk Orman Çiftliği', user5);
  static Bulletin bulletin4 = Bulletin("15200", 'Selanik Bahçesi', user3);
  static Bulletin bulletin5 = Bulletin("900", 'Batıkent Botanik', user2);
  static Bulletin bulletin6 = Bulletin("7580", 'Gezi Parkı', user4);

  static List<Bulletin> bulletinList = [
    bulletin1,
    bulletin2,
    bulletin3,
    bulletin4,
    bulletin5,
    bulletin6,
  ];

  static List<Group> groupList = [group1, group3, group4, group2];
}
