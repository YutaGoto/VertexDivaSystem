# マスターデータ
Difficulty.destroy_all
Difficulty.create(
  [
    {name: "Easy"},
    {name: "Normal"},
    {name: "Hard"},
    {name: "Extreme"},
    {name: "ExExtreme"}
  ]
)

# difficulty_ids
# 1: Easy
# 2: Normal
# 3: Hard
# 4: Extreme
# 5: ExExtreme

# ボカロ
Vocalist.destroy_all
Vocalist.create(
  [
    {id: 1, name: "初音ミク"},
    {id: 2, name: "鏡音リン"},
    {id: 3, name: "鏡音レン"},
    {id: 4, name: "巡音ルカ"},
    {id: 5, name: "KAITO"},
    {id: 6, name: "MEIKO"}
  ]
)

# 曲データ

Song.destroy_all
Song.create(
  [
    {
      title: "あいうえお",
      release_date: "2015-12-12",
      difficulty_ids: [1,2,3,4,5],
      vocalist_ids: [1,2]
    }
  ]
)

