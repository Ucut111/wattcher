class SweatingPatterns {
  static const letters = {
    'rus': 'щ   ш  ч  ц  ю  я  ё  ж  ъ  ы  э  а б в г д е з и й й к л м н о п р с т у ф х х ц ь',
    'eng': "shh sh ch cz yu ya yo zh `` y' e` a b v g d e z i j y k l m n o p r s t u f x h c `",
  };

  static const goodPatterns = [
    '.*психу.*',
    '.*к(о|а)манд.*',
    '.*истр(е|и)блять.*',
    '.*л(о|а)х(о|а)трон.*',
    '.*(о|а)ск(о|а)рблять.*',
    'хул(е|и)ган',
    '.*м(а|о)нд(а|о)рин.*',
    '.*р(а|о)ссл(а|о)блять.*',
    '.*п(о|а)тр(е|и)блять.*',
    r'.*@.*\\.(ру|сом|нет)$',
  ];

  static const badPatterns = [
    '^(о|а)н(о|а)нист.*',
    '^лошар.*',
    r'^к(а|о)злина$',
    r'^к(о|а)зел$',
    '^сволоч(ь|ъ|и|уга|ам|ами).*',
    '^лох[уеыаоэяию].*',
    '.*урод(ы|у|ам|ина|ины).*',
    '.*бля(т|д).*',
    '.*гандо.*',
    '^м(а|о)нд(а|о).*',
    '.*сперма.*',
    r'.*[уеёыаоэяию]еб$',
    '^сучк(а|у|и|е|ой|ай).*',
    '^придур(ок|ки).*',
    '^д(е|и)би(л|лы).*',
    r'^сос(ать|и|ешь|у)$',
    '^залуп.*',
    '^муд(е|ил|о|а|я|еб).*',
    '.*шалав(а|ы|ам|е|ами).*',
    '.*пр(а|о)ст(и|е)т(у|е)тк(а|и|ам|е|ами).*',
    '.*шлюх(а|и|ам|е|ами).*',
    '.*ху(й|и|я|е|л(и|е)).*',
    '.*п(и|е|ы)зд.*',
    '^бл(я|т|д).*',
    '(с|сц)ук(а|о|и|у).*',
    '.*(д(о|а)лб(о|а)|разъ|разь|за|вы|по)ебы*.*',
    '.*пид(а|о|е)р.*',
    '.*хер.*',
    '^е(б|п).',
  ];
}
