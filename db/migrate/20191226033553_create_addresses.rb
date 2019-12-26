class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postal_code
      t.integer :prefecture
      t.string :city
      t.string :address
      t.string :building_name

      t.timestamps
    end
  end
end
