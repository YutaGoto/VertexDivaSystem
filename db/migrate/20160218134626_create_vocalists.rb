class CreateVocalists < ActiveRecord::Migration
  def change
    create_table :vocalists do |t|
      t.string 'name'

      t.timestamps null: false
    end
  end
end
