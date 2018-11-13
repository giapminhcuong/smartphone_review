class CreateMakers < ActiveRecord::Migration[4.2]
  def change
    create_table :makers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
