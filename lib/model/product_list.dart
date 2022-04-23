class ProductList {
  String name;
  String price;
  String imageAsset;
  List<String> imageDetail;
  String brand;
  String category;
  String series;
  String from;
  String description;
  // List<String> imageAssets;

  ProductList(
      {required this.name,
      required this.price,
      required this.imageAsset,
      required this.imageDetail,
      required this.brand,
      required this.category,
      required this.series,
      required this.from,
      required this.description
      // required this.imageAssets,
      });
}

var productListList = [
  ProductList(
      name: 'PVC Zero Two 1/7',
      price: 'Rp 3.100.000',
      imageAsset: 'images/ZeroTwo/ZT1.png',
      imageDetail: [
        'images/ZeroTwo/ZT2.png',
        'images/ZeroTwo/ZT1.png',
        'images/ZeroTwo/ZT3.png'
      ],
      brand: 'Aniplex',
      category: 'PVC Scaled Figure',
      series: 'Darling in The Franxx',
      from: 'Aniplex+',
      description:
          'The unforgettable heroine Zero Two from the smash hit anime series DARLING in the FRANXX comes to Aniplex+!\n\nDonned in her school uniform as seen in the ending theme of the show, Zero Two comes to life thanks to sculpting artist GRIZZRYPANDA. Enjoy this beautiful rendition capturing a memorable scene from the ED as Zero Two elegantly stands atop a pink crane with a kind and gentle smile.\n\nNow’s your chance to be Zero Two’s darling, so don’t wait and order her today!'),
  ProductList(
      name: 'Figma Tohka',
      price: 'Rp 800.000',
      imageAsset: 'images/Tohka/tohka1.png',
      imageDetail: [
        'images/Tohka/tohka1.png',
        'images/Tohka/tohka2.png',
        'images/Tohka/tohka3.png'
      ],
      brand: 'Max Factory',
      category: 'Figma',
      series: 'Date A Live',
      from: 'AmiAmi',
      description:
          '"Also... will you take me on a date?" \n\nFrom the anime series Date A Live comes a figma of one of the main heroines, Tohka Yatogami, also known as the Spirit Princess!\n\n-Using the smooth yet posable joints of figma, you can create a variety of poses from the series.\n\n-A flexible plastic is used for important areas, allowing proportions to be kept without compromising posability.\n\n-She comes with three face plates including a serious face, a shouting face and a blushing face.\n\n-Her great sword Sandalphon, an attacking effect part, an interchangeable arm part to display her holding her sword and a kinako bread are all included as optional parts.\n\n-A large articulated figma stand is included to display the figma in a variety of poses.'),
  ProductList(
      name: 'Nendoroid Zero Two',
      price: 'Rp 850.000',
      imageAsset: 'images/NendoZT/nzt1.png',
      imageDetail: [
        'images/NendoZT/nzt1.png',
        'images/NendoZT/nzt2.png',
        'images/NendoZT/nzt3.png'
      ],
      brand: 'Good Smile Company',
      category: 'Nendoroid',
      series: 'Darling in The Franxx',
      from: 'Hobby Link Japan',
      description:
          '"Wont you be my darling?"\n\nFrom the popular anime series "DARLING in the FRANXX" comes a rerelease of the Nendoroid of Zero Two wearing her uniform! She comes with three face plates including a fearless smile, an innocent smile with closed eyes as well as a sidelong glance with an open mouth that can be used to display her sucking a lollipop or with her tongue out!\n\nThe bacon from the start is also included allowing you to recreate the iconic scene bacon eating scene from the series! Her jacket and hat are also included as optional parts for even more posing opportunities!'),
  ProductList(
      name: 'PVC Utaha 1/7',
      price: 'Rp 2.150.000',
      imageAsset: 'images/Utaha/utaha1.png',
      imageDetail: [
        'images/Utaha/utaha1.png',
        'images/Utaha/utaha2.png',
        'images/Utaha/utaha3.png'
      ],
      brand: 'Good Smile Company',
      category: 'PVC Scaled Figure',
      series: 'Saenai Heroine no Sodatekata',
      from: 'Hobby Link Japan',
      description:
          'Utaha-senpai in a ladylike one-piece dress!\n\nFrom the anime series "Saekano: How to Raise a Boring Girlfriend ♭" comes a 1/7 scale figure of Utaha Kasumigaoka, popular novelist and senpai of the main character.'),
  ProductList(
      name: 'PVC Ichigo 1/7',
      price: 'Rp 1.527.000',
      imageAsset: 'images/Ichigo/ichigo1.png',
      imageDetail: [
        'images/Ichigo/ichigo1.png',
        'images/Ichigo/ichigo2.png',
        'images/Ichigo/ichigo3.png'
      ],
      brand: 'Good Smile Company',
      category: 'PVC Scaled Figure',
      series: 'Darling in The Franxx',
      from: 'Hobby Search',
      description:
          '"What am I living for?"\n\nFrom the popular anime "DARLING in the FRANXX" comes a scale figure of Ichigo. Using her outfit from the ending theme, "Torikago", the 1/7th scale figure captures the scene of her in a somewhat risky pose on a bridge.\n\nThe aged appearance of the bridge is conveyed through a detailed paintjob, while Ichigo\'s listless expression and unbalanced pose has been carefully recreated as well. Her hood can be displayed either on or off, so enjoy displaying your favorite version of Ichigo.'),
  ProductList(
      name: 'Pop Up Parade Rei',
      price: 'Rp 527.000',
      imageAsset: 'images/Rei/rei1.png',
      imageDetail: [
        'images/Rei/rei1.png',
        'images/Rei/rei2.png',
        'images/Rei/rei3.png'
      ],
      brand: 'Good Smile Company',
      category: 'Pop Up Parade',
      series: 'Evangelion',
      from: 'Hobby Link Japan',
      description:
          'POP UP PARADE is a series of figures that are easy to collect with affordable prices and speedy releases! Each figure typically stands around 17-18cm in height and the series features a vast selection of characters from popular anime and game series, with many more to be added soon!\n\nFrom the popular anime movie series "Rebuild of Evangelion" comes a POP UP PARADE figure of Rei Ayanami in her memorable long haired appearance from the movies. Be sure to add her to your collection!'),
];
