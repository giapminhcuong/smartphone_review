class CreateReviews < ActiveRecord::Migration[4.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :banner
      t.string :content
      t.integer :cmt_count, default: 0
      t.boolean :state, default: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
