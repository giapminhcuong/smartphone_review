class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :state, :boolean, default: false
  end
end
