# admin
Admin.destroy_all
Admin.create(
  [
    {
      name: '.ごっち',
      email: 'test@miku.com',
      password: 'test1234',
      twitter_id: 'gggooottto'
    }
  ]
)

Difficulty.destroy_all
Difficulty.create(
  [
    { name: 'Easy' },
    { name: 'Normal' },
    { name: 'Hard' },
    { name: 'Extreme' },
    { name: 'ExExtreme' }
  ]
)

Vocalist.destroy_all
Vocalist.create(
  [
    { name: "初音ミク" },
    { name: "鏡音リン" },
    { name: "鏡音レン" },
    { name: "巡音ルカ" },
    { name: 'KAITO' },
    { name: 'MEIKO' }
  ]
)

Composer.destroy_all
Composer.create(
  [
    { name: "19's Sound Factory" },
    { name: '40mP' },
    { name: 'apfel note' },
    { name: 'AVTechNO!' },
    { name: 'azuma' },
    { name: 'baker' },
    { name: 'Chesa' },
    { name: "cosMo@暴走P" },
    { name: 'daniwell' },
    { name: 'DECO*27' },
    { name: "Dios/シグナルP" },
    { name: 'Dixie Flatline' },
    { name: 'doriko' },
    { name: 'E.L.V.N' },
    { name: 'fatP' },
    { name: 'Funky K.H' },
    { name: 'Gom' },
    { name: 'halyosy' },
    { name: 'HIRO' },
    { name: 'hmtk' },
    { name: 'HoneyWorks' },
    { name: 'Hoskey' },
    { name: 'ika_mo' },
    { name: 'iroha(sasaki)' },
    { name: 'Junky' },
    { name: 'kazuP' },
    { name: "Kouhei (K's Sound Project)" },
    { name: "koushirou（卑屈P）" },
    { name: 'KulfiQ' },
    { name: 'kz' },
    { name: 'Last Note.' },
    { name: 'Lemm' },
    { name: 'lumo' },
    { name: 'malo' },
    { name: 'Masaki' },
    { name: 'MazoP' },
    { name: 'mikuru396' },
    { name: 'millstones' },
    { name: "minato（流星P）" },
    { name: 'Mitchie M' },
    { name: 'Nem' },
    { name: 'Neru' },
    { name: 'North-T' },
    { name: "ohnuma(大福P)" },
    { name: 'OPA' },
    { name: 'OSTER project' },
    { name: 'otetsu' },
    { name: 'Otomania' },
    { name: 'PolyphonicBranch' },
    { name: 'Re:nG' },
    { name: 'ryo' },
    { name: 'samfree' },
    { name: 'sasakure.UK' },
    { name: 'Shun13' },
    { name: 'shu-t' },
    { name: 'teaeye' },
    { name: 'tilt-six' },
    { name: "TOKOTOKO（西沢さんP）" },
    { name: 'uguis08' },
    { name: "U-ji（霊長類P）" },
    { name: 'Ultra-Noob' },
    { name: 'vilP' },
    { name: 'wowaka' },
    { name: 'yanagi' },
    { name: 'yuukiss' },
    { name: "アゴアニキ" },
    { name: "あつぞうくん" },
    { name: "いーえるP @ TinySymphony" },
    { name: "イヤイヤP" },
    { name: "うたたP" },
    { name: "うどんゲルげ" },
    { name: "おっさんP（K's Sound Project）" },
    { name: "おにゅうP" },
    { name: "オワタP" },
    { name: "かめりあ" },
    { name: "くぇ（ナイーヴP）" },
    { name: "くちばし" },
    { name: "くちばしP" },
    { name: "くらP" },
    { name: "クリスタルP" },
    { name: "クワガタP" },
    { name: "さつき が てんこもり" },
    { name: "じーざす" },
    { name: "ジェバンニP" },
    { name: "しばいぬ" },
    { name: "ジミーサムP" },
    { name: "じょん" },
    { name: "すこっぷ" },
    { name: "ぢゅ＠メラゾーマP" },
    { name: "てぃあら" },
    { name: "デスおはぎ" },
    { name: "デッドボールP" },
    { name: "テンネン" },
    { name: "トーマ" },
    { name: "とく" },
    { name: "トラボルタ" },
    { name: "ナノウ" },
    { name: "なるしまたかし" },
    { name: "ねこぼーろ" },
    { name: "のぼる↑" },
    { name: "のりぴー" },
    { name: "ハチ" },
    { name: "ハヤシケイ" },
    { name: "はやや" },
    { name: "ひとしずくP" },
    { name: "ひなた春花" },
    { name: "ピノキオピー" },
    { name: "フナコシP" },
    { name: "ぶりる" },
    { name: "ぼーかりおどP(noa)" },
    { name: "ぽわぽわP" },
    { name: "マチゲリータ" },
    { name: "めりっさP" },
    { name: "モジャP" },
    { name: "もじょP" },
    { name: "ヤスオ" },
    { name: "ゆうゆ" },
    { name: "ゆちゃＰ" },
    { name: "ゆよゆっぺ" },
    { name: "ラヴリーP" },
    { name: "ラマーズP" },
    { name: "れるりり" },
    { name: "ワンカップP" },
    { name: "銀サク" },
    { name: "古墳P" },
    { name: "光収容" },
    { name: "黒うさP" },
    { name: "骨盤P" },
    { name: "仕事してP" },
    { name: "囚人P" },
    { name: "小林オニキス" },
    { name: "新城P" },
    { name: "神前 暁" },
    { name: "秦野P" },
    { name: "蝶々P" },
    { name: "釣り師P" },
    { name: "田中P" },
    { name: "爆弾ポピー" },
    { name: "畑 亜貴" },
    { name: "八王子P" },
    { name: "糞田舎P" }
  ]
)

Song.destroy_all
Song.create(
  [
    {
      title: "ワールドイズマイン",
      title_kana: "わーるどいずまいん",
      release_date: '2010-06-23',
      difficulty_ids: [1, 2, 3, 4, 5],
      vocalist_ids: [1],
      composer_id: 2
    },
    {
      title: "星屑ユートピア",
      title_kana: "ほしくずゆーとぴあ",
      release_date: '2010-06-23',
      difficulty_ids: [1, 2, 3, 4, 5],
      vocalist_ids: [4],
      composer_id: 3
    },
    {
      title: "なりすましゲンガー",
      title_kana: "なりすましげんがー",
      release_date: '2016-1-28',
      difficulty_ids: [1, 2, 3, 4],
      vocalist_ids: [1, 2],
      composer_id: 4
    },
    {
      title: "アゲアゲアゲイン",
      title_kana: "あげあげあげいん",
      release_date: '2016-2-26',
      difficulty_ids: [1, 2, 3, 4],
      vocalist_ids: [1],
      composer_id: 5
    }
  ]
)
