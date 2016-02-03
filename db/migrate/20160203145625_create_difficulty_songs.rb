class CreateDifficultySongs < ActiveRecord::Migration
  def change
    create_table :difficulty_songs do |t|
      t.references  :song, index: true, null: false
      t.references  :difficulty, index: true, null: false
      t.integer     :ster

      t.timestamps null: false
    end
  end
end
