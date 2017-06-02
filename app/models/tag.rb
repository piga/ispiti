class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :zadataks, through: :taggings
end
