class CreateProducts < ActiveRecord::Migration[4.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :category
      t.integer :maker_id

      t.timestamps null: false
    end
  end
end
