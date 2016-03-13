class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.text :body
      t.datetime :publish_date
      t.boolean :draft

      t.timestamps null: false
    end
  end
end
