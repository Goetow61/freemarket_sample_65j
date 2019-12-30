class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id,           null: false, foreign_key: true
      t.integer :buyer_id,          null: false, foreign_key: true
      t.string  :name,              null: false,   index: true
      t.text    :detail,            null: false
      t.integer :status,            null: false
      t.boolean :postage,           null: false
      t.integer :postmethod,        null: false
      t.integer :days,              null: false
      t.integer :price,             null: false
      t.string  :size
      t.string  :brand
      t.integer :category_tree_id,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
