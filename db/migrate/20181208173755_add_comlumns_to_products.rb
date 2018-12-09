class AddComlumnsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description, :string
    add_column :products, :screen_type, :string
    add_column :products, :resolution, :string
    add_column :products, :screen_size, :string
    add_column :products, :rear_camera, :string
    add_column :products, :rear_flash, :string
    add_column :products, :front_camera, :string
    add_column :products, :os, :string
    add_column :products, :chipset, :string
    add_column :products, :cpu_speed, :string
    add_column :products, :gpu, :string
    add_column :products, :ram, :string
    add_column :products, :rom, :string
    add_column :products, :expandable_storage, :string
    add_column :products, :conectivity_type, :string
    add_column :products, :wifi, :string
    add_column :products, :bluetooth, :string
    add_column :products, :port, :string
    add_column :products, :jack, :string
    add_column :products, :other_connectivity, :string
    add_column :products, :material, :string
    add_column :products, :dimension, :string
    add_column :products, :weight, :string
    add_column :products, :pin_capability, :string
    add_column :products, :pin_type, :string
    add_column :products, :security, :string
    add_column :products, :other_feature, :string
    add_column :products, :release_date, :string
  end
end
