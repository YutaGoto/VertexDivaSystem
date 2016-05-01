class CreateIllustrators < ActiveRecord::Migration
  def change
    create_table :illustrators do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
