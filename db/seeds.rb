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

# 曲データ
Song.destroy_all
Song.create(
  [
    {
      title: "ワールドイズマイン",
      title_kana: "わーるどいずまいん",
      release_date: '2010-06-23',
      difficulty_ids: [1, 2, 3, 4, 5],
      vocalist_ids: [1]
    },
    {
      title: "曲名",
      title_kana: "きょくめい",
      release_date: '2015-12-12',
      difficulty_ids: [1, 2, 3, 4, 5],
      vocalist_ids: [1, 2]
    }
    ## どんどん追加する
  ]
)
