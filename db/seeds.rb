# マスターデータ
Difficulty.destroy_all
Difficulty.create(
  [
    {name: "Easy"},
    {name: "Normal"},
    {name: "Difficult"},
    {name: "Extream"},
    {name: "ExExtream"}
  ]
)

# difficulty_ids
# 1: Easy
# 2: Normal
# 3: Difficult
# 4: Extream
# 5: ExExtream

# 曲データ

Song.destroy_all
Song.create(
  [
    {
      title: "あいうえお",
      release_date: "2015-12-12",
      difficulty_ids: [1,2,3,4,5]
    }
  ]
)

