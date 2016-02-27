class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string      'title'
      t.string      'title_kana'
      t.datetime    'release_date'

      t.timestamps  null: false
    end
  end
end
