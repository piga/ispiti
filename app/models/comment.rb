class Comment < ActiveRecord::Base
  belongs_to :zadatak
  default_scope -> { order(created_at: :desc) }
  validates :autor, presence: true
  validates :zadatak_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
