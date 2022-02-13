import '../../view/authentication/register/model/user_model.dart';
import '../../view/food/model/food_model.dart';
import '../../view/home/model/bulletin_model.dart';
import '../../view/home/model/group_model.dart';
import '../enum/image_enum.dart';

class DummyDatas {
  static const List<String> bookNames = [
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

  static Food food0 = Food(
    'Muz',
    'assets/images/foods/muz.jfif',
    'Muz,Cildi güzelleştiren ve mide hastalıklarını dindiren sağlıklı bir meyvedir.',
    4,
  );

  static Food food1 = Food(
    'Portakal',
    'assets/images/foods/portakal.jfif',
    'Portakal,Böbrek taşı oluşumunu engelleyen ve kan basıncını dengeleyen sağlıklı bir meyvedir.',
    4,
  );

  static Food food2 = Food(
    'Yumurta',
    'assets/images/foods/yumurta.jfif',
    'Yumurta,protein içerdiği temel aminoasitler sayesinde son derece yüksek kalitelidir.',
    5,
  );

  static Food food3 = Food(
    'Badem',
    'assets/images/foods/badem.jfif',
    'Badem,zayıflamaya yardımcı olur ve kemikleri güçlendirir.',
    3,
  );

  static Food food4 = Food(
    'Ceviz',
    'assets/images/foods/ceviz.jpg',
    'Ceviz,metabolizmayı iyileştirir.Vücuda bakır, kalsiyum, demir, selenyum, çinko gibi mineraller sağlar.',
    4,
  );

  static Food food5 = Food(
    'Biber',
    'assets/images/foods/biber.jfif',
    'Biberin kansere karşı koruyucu etkisi vardır ve göz sağlığının korunmasına yardımcı olur.',
    4,
  );

  static Food food6 = Food(
    'İncir',
    'assets/images/foods/incir.jpg',
    'İncir,astım ve bronşit hastalığına iyi gelir.',
    5,
  );

  static Food food7 = Food(
    'Zeytin',
    'assets/images/foods/zeytin.jpg',
    'Zeytin,sindirimi kolaylaştırır ve kalp sağlığını korur.',
    4,
  );

  static Food food8 = Food(
    'Nar',
    'assets/images/foods/nar.jfif',
    'Nar; kan basıncını, kötü kolesterolü ve kan şekerini düşür.',
    5,
  );

  static Food food9 = Food(
    'Balık',
    'assets/images/foods/balik.jfif',
    'Balık,bağışıklık sistemini korur,zeka gelişimine katkı sağlar ve diyabet riskini azaltır.',
    5,
  );

  static List<Food> healthyFoodList = [
    food0,
    food1,
    food2,
    food3,
    food4,
    food5,
    food6,
    food7,
    food8,
    food9
  ];

  static Food food10 = Food(
    'Pasta',
    'assets/images/foods/cake.jpg',
    'Pasta , içerdiği şeker ve kremadan dolayı oldukça zararlıdır.',
    1,
  );
  static Food food11 = Food(
    'Kahve',
    'assets/images/foods/coffee.jpg',
    'Kahve, içerdiği bol miktarda kafeinden dolayı fazla tüketilmesi zararlıdır.',
    3,
  );
  static Food food12 = Food(
    'Dondurma',
    'assets/images/foods/ice_cream.jpg',
    'Dondurma, içerdiği şeker ve hazır gıdalar sebebiyle zararlıdır.',
    2,
  );
  static Food food13 = Food(
    'Pizza',
    'assets/images/foods/pizza.jpg',
    'Pizza, içinde bulundurduğu fazla yağ ve karbonhidrat nedeniyle zararlıdır.',
    1,
  );
  static Food food14 = Food(
    'Makarna',
    'assets/images/foods/makarna.jpg',
    'Makarna, karbonhidrat bakımından zengin olduğu için fazla tüketimi zararlıdır.',
    3,
  );
  static Food food15 = Food(
    'Kola',
    'assets/images/foods/kola.jpg',
    'Kola, şekerli olmasının yanı sıra çok fazla kimyasal içermektedir. İçmeyiniz.',
    1,
  );
  static Food food16 = Food(
    'Patates Kızartması',
    'assets/images/foods/patates.jpg',
    'Patates kızartması, kızartılırken kullanılan yağ sebebiyle tüketimi sakıncalıdır.',
    3,
  );
  static Food food17 = Food(
    'Şeker',
    'assets/images/foods/sugar.jpg',
    'Aşırı tüketilmesi durumunda diyabet ve obezite riskini artırdığı için fazla tüketilmemelidir.',
    2,
  );

  static List<Food> unhealthyFoodList = [
    food10,
    food11,
    food12,
    food13,
    food14,
    food15,
    food16,
    food17
  ];
}
