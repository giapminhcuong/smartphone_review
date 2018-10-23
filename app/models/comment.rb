class Comment < ActiveRecord::Base
    belongs_to :user, required: true
    belongs_to :review, required: true, counter_cache: :cmt_count
    
    def blank_stars
        5 - star.to_i
    end
end