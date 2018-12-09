class Product < ActiveRecord::Base
    include PgSearch
    pg_search_scope :custom_search, :against => :name
    
    mount_uploader :image_path, ImageUploader
    
    belongs_to :maker, required: true
    accepts_nested_attributes_for :maker
    
    has_many :product_reviews, dependent: :destroy
    has_many :reviews, through: :product_reviews
    
    validates :name, presence: true, uniqueness: true
    validates :category, presence: true
    
    scope :by_category, -> (category) { where category: category }
    scope :price_asc, ->{order price: :asc}
    scope :price_desc, ->{order price: :desc}
    scope :order_by_time, ->{order created_at: :desc}

    private
    def update_path
        if (!self.image_path.blank?)
            self.update_column('image',self.image_path.url)
        end
    end
end
