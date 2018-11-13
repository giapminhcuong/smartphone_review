class Maker < ActiveRecord::Base
    include PgSearch
    multisearchable :against => :name
    
    has_many :products, dependent: :destroy
    
    validates :name, presence: true, uniqueness: true
end
