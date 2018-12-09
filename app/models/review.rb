class Review < ActiveRecord::Base
    include PgSearch
    pg_search_scope :review_search, :against => [:title, :content]
    
    mount_uploader :banner_path, BannerUploader
    
    belongs_to :user, required: true
    
    has_many :product_reviews, dependent: :destroy
    has_many :products, through: :product_reviews
    
    has_many :comments, dependent: :destroy
    
    accepts_nested_attributes_for :products
    
    validates :title, presence: true
    validates :content, presence: true
    
    scope :order_by_time, ->{order created_at: :desc}
    scope :order_by_cmt, ->{order cmt_count: :desc}

    private
    def update_path
        if (!self.banner_path.blank?)
            self.update_column('image',self.banner_path.url)
        end
    end
    
end
