class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string      'title'
      t.string      'title_kana'
      t.datetime    'release_date'
      t.integer     'composer_id'
      t.integer     'illustration_id'

      t.timestamps  null: false
    end
  end
end
