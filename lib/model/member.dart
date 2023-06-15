class Member {
  String name;
  String hangeul;
  String birthdate;
  String image;

  Member({
    required this.name,
    required this.hangeul,
    required this.birthdate,
    required this.image
  });
}

var memberList = [
  Member(
    name: 'LILY',
    hangeul: '릴리',
    birthdate: '17 October 2002',
    image: 'https://lv2-cdn.azureedge.net/nmixx/b66e3a84c78f40c4a67db229ca34e872-%EB%A6%B4%EB%A6%AC.jpg'
  ),
  Member(
      name: 'HAEWON',
      hangeul: '해원',
      birthdate: '25 February 2003',
      image: 'https://lv2-cdn.azureedge.net/nmixx/9463a395292c48cea6fb4a6e240be87b-%ED%95%B4%EC%9B%90.jpg'
  ),
  Member(
      name: 'SULLYOON',
      hangeul: '설윤',
      birthdate: '26 January 2004',
      image: 'https://lv2-cdn.azureedge.net/nmixx/bb655b37229b4dba9a745832138712ef-%EC%84%A4%EC%9C%A4.jpg'
  ),
  Member(
      name: 'JINNI',
      hangeul: '지니',
      birthdate: '16 April 2004',
      image: 'https://lv2-cdn.azureedge.net/nmixx/a81a02f6ebad4e8eb60f313ac7995e4a-%EC%A7%80%EB%8B%88.jpg'
  ),
  Member(
      name: 'BAE',
      hangeul: '배이',
      birthdate: '28 December 2004',
      image: 'https://lv2-cdn.azureedge.net/nmixx/4a81839aa0f94886b99d8a10352fdf44-%EB%B0%B0%EC%9D%B4.jpg'
  ),
  Member(
      name: 'JIWOO',
      hangeul: '지우',
      birthdate: '14 April 2005',
      image: 'https://lv2-cdn.azureedge.net/nmixx/e10311e4582e467fb343706b953f95ed-%EC%A7%80%EC%9A%B0.jpg'
  ),
  Member(
      name: 'KYUJIN',
      hangeul: '규진',
      birthdate: '26 May 2006',
      image: 'https://lv2-cdn.azureedge.net/nmixx/21f8a071a6a84dcca7956f67e4db3d2b-%EA%B7%9C%EC%A7%84.jpg'
  ),
];