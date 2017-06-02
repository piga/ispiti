class Tagging < ActiveRecord::Base
  belongs_to :zadatak
  belongs_to :tag
end
