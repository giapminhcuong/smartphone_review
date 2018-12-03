class Product < ActiveRecord::Base
    include PgSearch
    multisearchable :against => :name
    
    mount_uploader :image, ImageUploader
    
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
end
