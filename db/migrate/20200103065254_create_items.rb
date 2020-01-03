class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id,null: false
      t.integer :buyer_id
      t.string :item_name, null: false
      t.text :detail, null:false
      t.string :status, null:false
      t.integer :postage, null:false
      t.string :postmethod, null:false
      t.string :streetadress, null:false
      t.integer :days, null: false
      t.integer :price, null:false
      t.string :size
      t.string :brand
      t.string :category

      t.timestamps
    end
  end
end
