class CreateVocalistSongs < ActiveRecord::Migration
  def change
    create_table :vocalist_songs do |t|
      t.references  :song, index: true, null: false
      t.references  :vocalist, index: true, null: false

      t.timestamps null: false
    end
  end
end
