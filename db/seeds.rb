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

# マスターデータ
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

# ボカロ
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
    {name: "八王子P"},
    {name: "ryo"},
    {name: "otetsu"},
    {name: "KulfiQ"},
    {name: "Mitchie M"}
  ]
)

# 曲データ
Song.destroy_all
Song.create(
  [
    {
      title: "ワールドイズマイン",
      title_kana: "わーるどいずまいん",
      release_date: '2010-06-23',
      difficulty_ids: [1, 2, 3, 4, 5],
      vocalist_ids: [1],
      composer_id: 2,
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
