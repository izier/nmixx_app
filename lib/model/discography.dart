class Discography {
  String title;
  String releaseDate;
  String artist;
  String description1;
  String description2;
  String picture;
  List<String> song;

  Discography({
    required this.title,
    required this.releaseDate,
    required this.artist,
    required this.description1,
    required this.description2,
    required this.picture,
    required this.song
  });
}

var discoList = [
  Discography(
      title: 'AD MARE',
      releaseDate: '22 February 2022',
      artist: 'NMIXX',
      description1:
      'NMIXX, Waking Up to a New World, Starting a New Progress'
          '\n\nSeven girls open their eyes to a nebulous world where the sky and the ocean melt into one another. At last, they face the world of infinity that once existed only in imagination or dreams.'
          '\n\nThe girls take their first step into the unknown world with everything of their dreams. Their universe changed forever the moment when their eyes were opened wide (O.O) at the discovery of the new world. With a broad perspective, they recognize and build on the possibilities that lay between reality (FIELD) and the unknown (MXTP). The girls of the “new,” the “infinite,” the “now” – they set sail without a moment of hesitation. The journey may be challenging rather than easy, risky rather than safe. But the very journey they take to the utopia of their dream will be worth more than anything.'
          '\n\nWhat will you and the girls see on this adventure?'
          '\n\nWhatever you encounter, you and the girls will be superheroes to each other as you explore the unknown, overcome the confusion and fear along the way and continue on the journey ahead beyond the ocean.',
      description2:
      'AD MARE is the debut single of NMIXX, the optimum new girl group from JYP that will own the new era, and the opening act of the New Frontier series.'
          '\n\nNMIXX’s debut single AD MARE introduces a new genre called MIXX POP, packed with the confidence and ambition of a new group ready to take on the world. MIXX POP blends in two or more genres into one flavorful song and represents the unusual experiment of NMIXX. “O.O” is a reinterpretation of baile funk, a genre relatively new to Korea, in a style unique to NMIXX and the track leads the listeners to the world of MIXX POP. The performance routines for the two tracks in the debut single are amazing visual spectacles reflective of the colorful variety of the music. NMIXX is an unprecedented new act debuting in February 2022 with a bang and is expected to be the best and the strongest ensemble that will reset the bar and draw in K-pop fans around the world'
          '\n\n“TANK,” the first track of the single, was produced by Ryan Jhun and his crew, a veritable trendsetter in K-pop, and Dem Jointz, a producer and global hitmaker who counts Kanye West among his production discographies. The production of the title “O.O” was led by THE HUB, a global production team behind numerous K-pop artists such as TWICE, ITZY, TREASURE, and ENHYPEN. And the fans can expect even more from the tracks as Dr.JO, who has worked with TWICE, IU, and MAMAMOO joined the production',
      picture: 'https://lv2-cdn.azureedge.net/nmixx/4f379779f3d44d599f931cc3daac3e58-%EC%98%A8%EB%9D%BC%EC%9D%B8%20%EC%BB%A4%EB%B2%84_%EA%B3%B5%ED%99%88.jpg',
      song: [
        '占 (TANK)',
        'O.O *Title',
        '占 (TANK) (Inst.)',
        'O.O (Inst.)'
      ])
];