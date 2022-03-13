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
    image: 'images/lily.png'
  ),
  Member(
      name: 'HAEWON',
      hangeul: '해원',
      birthdate: '25 February 2003',
      image: 'images/haewon.png'
  ),
  Member(
      name: 'SULLYOON',
      hangeul: '설윤',
      birthdate: '26 January 2004',
      image: 'images/sullyoon.png'
  ),
  Member(
      name: 'JINNI',
      hangeul: '지니',
      birthdate: '16 April 2004',
      image: 'images/jinni.png'
  ),
  Member(
      name: 'BAE',
      hangeul: '배이',
      birthdate: '28 December 2004',
      image: 'images/bae.png'
  ),
  Member(
      name: 'JIWOO',
      hangeul: '지우',
      birthdate: '14 April 2005',
      image: 'images/jiwoo.png'
  ),
  Member(
      name: 'KYUJIN',
      hangeul: '규진',
      birthdate: '26 May 2006',
      image: 'images/kyujin.png'
  ),
];