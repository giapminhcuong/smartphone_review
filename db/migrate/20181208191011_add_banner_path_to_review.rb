class AddBannerPathToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :banner_path, :string
    add_column :reviews, :string, :string
  end
end
